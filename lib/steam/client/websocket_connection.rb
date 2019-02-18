require_relative 'messages'
require_relative 'protobuf_handlers'
require 'faye/websocket'
require 'eventmachine'
require 'zlib'

# TODO: MsgHdrProtoBuf should auto read protobuf?? (Think about it)

class WebSocketConnection
  include Logging
  include Wisper::Publisher

  def initialize(endpoint)
    @url = "wss://#{endpoint}/cmsocket/"
    @steamid = Steam::SteamID::STEAMID_CONVERSION_BASE
    @sessionid = 0
  end

  def connect
    EM.run do
      @ws = Faye::WebSocket::Client.new(@url)
      @ws.on :open do |event|
        broadcast(:connected, event)
      end

      @ws.on :message do |event|
        decode_messsage(event.data.pack('C*'))
      end

      @ws.on :close do |event|
        p [:close, event.code, event.reason]
        @heart_beat_thread.exit if @heart_beat_thread
        broadcast(:closed, event.code, event.reason)
        @ws = nil
      end
    end
  end

  def send(emsg, body_params = {})
    proto = SteamCommunity::Internal::CMsgProtoBufHeader.new(
      client_sessionid: @sessionid,
      steamid: @steamid
    )
    header = MsgHdrProtoBuf.new(msg: emsg, proto: proto.encode).to_binary_s
    body = Steam::PROTOBUF_HANDLERS[emsg].new(body_params).encode
    logger.debug "Sending message - EMsg:#{EMsg.key(emsg)}(#{emsg})"
    @ws.send((header + body).unpack('C*'))
  end

  private

  # @return [Thread] return loop thread reference
  def set_interval(delay)
    Thread.abort_on_exception = true
    @heart_beat_thread = Thread.new do
      loop do
        sleep delay
        yield
      end
    end
  end

  def decode_messsage(packet)
    packet = StringIO.new(packet)
    rawemsg = packet.read(4).unpack1('L')
    packet.rewind
    # TODO: create separate class for handling this?
    header = if (rawemsg & 0x80000000) == 0
               ExtendedClientMsgHdr.read(packet)
             else
               MsgHdrProtoBuf.read(packet)
             end
    emsg = header[:msg]
    logger.debug "Recieved message - EMsg:#{EMsg.key(emsg)}(#{emsg})"

    if emsg == EMsg::Multi # packet contains several EMsg, send together
      cmsg = SteamCommunity::Internal::CMsgMulti.decode_from(packet)
      body = StringIO.new(cmsg[:message_body])
      body = Zlib::GzipReader.new(body) if cmsg[:size_unzipped] != 0 # sometimes body comes uncompressed(size_unzipped = 0)
      decode_messsage(EmbeddedPacket.read(body)[:data]) until body.eof?
      return
    elsif !Steam::PROTOBUF_HANDLERS.key?(emsg)
      return logger.debug "Dont know how to decode EMsg:#{EMsg.key(emsg)}(#{emsg})"
    end

    header = SteamCommunity::Internal::CMsgProtoBufHeader.decode(header[:proto])
    body = Steam::PROTOBUF_HANDLERS[emsg].decode_from(packet)

    case emsg
    when EMsg::ClientLogOnResponse
      if body.eresult == Enum::EResult::OK
        @sessionid = header.client_sessionid
        @steamid = header.steamid
        @client_instance_id = body.client_instance_id
        set_interval(body.out_of_game_heartbeat_seconds) { send(EMsg::ClientHeartBeat) }
        send(EMsg::ClientRequestWebAPIAuthenticateUserNonce)
      end

      logger.debug "ClientLogOnResponse: #{Enum::EResult.key(body[:eresult])}"
      # TODO: these require additional processing?
      # when EMsg::ClientVACBanStatus
      # when EMsg::ClientUpdateMachineAuth
      # when EMsg::ClientCMList
      # when EMsg::ClientServersAvailable
      # when EMsg::ClientPersonaState
      # when EMsg::ClientChangeStatus
    when EMsg::ClientRequestWebAPIAuthenticateUserNonceResponse

      Steam::Bot.web_auth(header.steamid, body.webapi_authenticate_user_nonce)
      puts 2
    when EMsg::ClientNewLoginKey
      @login_key = body.login_key
      send(EMsg::ClientNewLoginKeyAccepted, unique_id: body.unique_id)
    end

    broadcast(:emsg, emsg, header, body)
  end
end
