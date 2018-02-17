# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'
require 'protobuf/rpc/service'


##
# Imports
#
require_relative 'steammessages_unified_base.steamclient.pb'

module SteamCommunity
  module Internal

    ##
    # Message Classes
    #
    class CVideo_ClientGetVideoURL_Request < ::Protobuf::Message; end
    class CVideo_ClientGetVideoURL_Response < ::Protobuf::Message; end
    class CVideo_UnlockedH264_Notification < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CVideo_ClientGetVideoURL_Request
      optional :uint64, :video_id, 1
      optional :uint32, :client_cellid, 2
    end

    class CVideo_ClientGetVideoURL_Response
      optional :uint64, :video_id, 1
      optional :string, :video_url, 2
    end

    class CVideo_UnlockedH264_Notification
      optional :bytes, :encryption_key, 1
    end


    ##
    # Service Classes
    #
    class Video < ::Protobuf::Rpc::Service
      rpc :client_get_video_url, ::SteamCommunity::Internal::CVideo_ClientGetVideoURL_Request, ::SteamCommunity::Internal::CVideo_ClientGetVideoURL_Response
    end

    class VideoClient < ::Protobuf::Rpc::Service
      rpc :notify_unlocked_h264, ::SteamCommunity::Internal::CVideo_UnlockedH264_Notification, ::SteamCommunity::Internal::NoResponse
    end

  end

end

