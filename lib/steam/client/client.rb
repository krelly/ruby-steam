require 'json'
require 'rest-client'
require 'benchmark'
require 'steam/web_api'
require_relative 'websocket_connection'

# TODO: DEFAULT_OPTS should emulate client behaviour
DEFAULT_OPTS = {
  ui_mode: 0,
  launcher_type: 0,
  should_remember_password: false,
  was_converted_deprecated_msg: false,
  create_new_psn_linked_account_if_needed: false,
  obfustucated_private_ip: 0,
  last_session_id: 0,
  client_package_version: 0,
  client_language: 'english',
  client_os_type: 4294967093,
  ping_ms_from_cell_search: 31,
  qos_level: 0,
  client_supplied_steam_id: 0,
  steam2_auth_ticket: '',
  email_address: '',
  rtime32_account_creation: 0,
  game_server_token: '',
  login_key: '',
  anon_user_target_account_name: '',
  resolved_user_steam_id: 0,
  # eresult_sentryfile: 1,
  # sha_sentryfile: "\x04\xD0I\xE7\x17\x00\x8A,\xA4q\xF2\x88\x90BH~\xE5\x83\x04\x89",
  # machine_id: "\x00MessageObject\x00\x01BB3\x00396155f1dfe007f94b246a4e89c03c4b924b5454\x00\x01FF2\x00a1c2efd769817fcb8da6a08f9248d9f592663344\x00\x013B3\x00b5cf358a3cebcf5a19720d80b55b0920ae94e8c7\x00\b\b",
  auth_code: '',
  otp_type: 0,
  otp_value: 0,
  otp_identifier: '',
  steam2_ticket_request: false,
  sony_psn_ticket: '',
  sony_psn_service_id: '',
  sony_psn_name: '',
  game_server_app_id: 0,
  steamguard_dont_remember_computer: false,
  machine_name: '',
  machine_name_userchosen: '',
  country_override: '',
  is_steam_box: false,
  client_instance_id: 0,
  supports_rate_limit_response: true
}.freeze

module Steam
  class Client
    include Logging
    include Wisper::Publisher

    def initialize
      @connection = WebSocketConnection.new(best_server)
      @connection.subscribe(self, prefix: 'on')
    end

    def connect
      @connection.connect
    end

    def on_connected(*args)
      broadcast(:connected, *args)
    end

    def on_emsg(emsg, *data)
      broadcast(emsg, data)
    end

    def set_persona(state, profile_name)
      @connection.send(EMsg::ClientChangeStatus, persona_state: state, player_name: profile_name)
    end

    def games_played(game_id, force: false)
      @connection.send(EMsg::ClientKickPlayingSession) if force
      sleep 1
      @connection.send(EMsg::ClientGamesPlayed, games_played: [game_id: game_id])
    end

    def login(params)
      @connection.send(EMsg::ClientLogon, DEFAULT_OPTS.merge(params))
    end

    def log_off
      @connection.send(EMsg::ClientLogOff)
    end

    private

    def best_server
      # TODO: improve score alghoritm
      # server_list.map(&:value).compact.map(&score_server).sort_by { |e| e[:score] }.first[:endpoint]
      'CM01-LUX.cm.steampowered.com:27020'
    end

    def score_server
      ->(el) { el.merge(score: el[:latency] + el[:load] * 2) }
    end

    def server_list
      # TODO: return bootstrapped if api call failed
      # 'wss://CM-01-WAW1.cm.steampowered.com:27020/cmsocket/'
      # bootstrapped_servers = JSON.parse(File.read("#{__dir__}/resources/servers_websocket.json"))
      # TODO: save cellid, recieved in logon responce and reuse it on next login
      api = Steam::WebApi.new
      servers = api.get('ISteamDirectory', 'GetCMList', cellid: 0)[:serverlist_websockets]

      servers.map { |server| Thread.new { query_server_load(server) } }
    end

    def query_server_load(endpoint)
      load = 110
      logger.debug "Checking #{endpoint}"
      latency = Benchmark.measure do
        load = RestClient::Request.execute(method: :get, url: "https://#{endpoint}/cmping/", timeout: 0.5)
                                  .headers[:x_steam_cmload]
      end
      { endpoint: endpoint, latency: latency.real * 1000, load: load.to_i }
    rescue StandardError => err
      logger.debug "#{endpoint} #{err.message}"
      nil
    end
  end
end
