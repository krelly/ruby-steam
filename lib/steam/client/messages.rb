require_relative 'enums'

require 'bindata'
require 'protobuf'

module SteamCommunity
end

Dir["#{__dir__}/resources/protobufs/**/*.rb"].each { |file| require file }

# These classes was generated from header.steamd
# Relation between steam data types and BinData Primitive Types
#   byte: 'uint8'
#   short: 'int16'
#   ushort: 'uint16'
#   int: 'int32'
#   uint: 'uint32'
#   long: 'int64'
#   ulong: 'uint64'

class Protomask < BinData::Primitive
  PROTO_MASK = 0x80000000

  uint32le :val

  def get
    val & ~PROTO_MASK
  end

  def set(v)
    self.val = v | PROTO_MASK
  end

  def extended_msg_hdr?
    (val & PROTO_MASK) == 0
  end
end

class MsgHdrProtoBuf < BinData::Record
  endian :little

  protomask :msg, initial_value: EMsg::Invalid
  uint32 :header_length, value: -> { proto.length }
  string :proto, read_length: :header_length
end

class ExtendedClientMsgHdr < BinData::Record
  endian :little

  uint32 :msg, initial_value: EMsg::Invalid
  uint8 :header_size, initial_value: 36
  uint16 :header_version, initial_value: 2
  uint64 :target_job_id, initial_value: Protobuf::Field::Uint32Field.max # ulong.MaxValue
  ## TODO: BinData should define its own constants/methods to determine max field value, but it lacks desired functionality,
  # Consider creating pull request , should be easy task, since they calculate max values internally anyway
  # Look for BinData::Int::create_clamp_code(nbits, signed) and AllIntegers::max_value (located at /bindata/test/int_test.rb)
  # Using protobuf constants here is a temporary hack
  uint64 :source_job_id, initial_value: Protobuf::Field::Uint32Field.max # ulong.MaxValue
  uint8 :header_canary, initial_value: 239
  # TODO: should return Steam::SteamID instance, not just number
  uint64 :steam_id # steamidmarshal
  int32 :session_id
end

class EmbeddedPacket < BinData::Record
  uint32le :len, value: -> { data.length }
  string :data, read_length: :len
end

# class ClientMsgHdr < BinData::Record
#   endian :little
#
#   protomask :msg, initial_value: EMsg::Invalid
#   choice :data, :selection => lambda { msg.extended_msg_hdr? }do
#     msg_hdr_proto_buf :default
#     extended_client_msg_hdr true
#   end
# end
