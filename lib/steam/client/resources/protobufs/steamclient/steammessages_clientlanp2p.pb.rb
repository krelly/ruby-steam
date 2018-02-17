# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require_relative 'steammessages_base.pb'

module SteamCommunity
  module Internal

    ##
    # Message Classes
    #
    class CMsgClientLANP2PRequestChunks < ::Protobuf::Message
      class ChunkKey < ::Protobuf::Message; end

    end

    class CMsgClientLANP2PRequestChunksResponse < ::Protobuf::Message
      class ChunkData < ::Protobuf::Message; end

    end



    ##
    # Message Fields
    #
    class CMsgClientLANP2PRequestChunks
      class ChunkKey
        optional :uint32, :depot_id, 1
        optional :bytes, :sha, 2
      end

      repeated ::SteamCommunity::Internal::CMsgClientLANP2PRequestChunks::ChunkKey, :chunk_keys, 1
    end

    class CMsgClientLANP2PRequestChunksResponse
      class ChunkData
        optional :uint32, :result, 1
        optional :uint32, :depot_id, 2
        optional :bytes, :sha, 3
        optional :bytes, :chunk_data, 4
        optional :bool, :encrypted, 5
        optional :bool, :compressed, 6
      end

      repeated ::SteamCommunity::Internal::CMsgClientLANP2PRequestChunksResponse::ChunkData, :chunk_responses, 1
    end

  end

end

