# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require_relative 'steammessages_base.pb'
require_relative 'steammessages_remoteclient_discovery.pb'

module SteamCommunity
  module Internal

    ##
    # Message Classes
    #
    class CMsgRemoteClientAppStatus < ::Protobuf::Message
      class AppUpdateInfo < ::Protobuf::Message; end
      class ShortcutInfo < ::Protobuf::Message; end
      class AppStatus < ::Protobuf::Message; end

    end

    class CMsgRemoteClientAuth < ::Protobuf::Message; end
    class CMsgRemoteClientAuthResponse < ::Protobuf::Message; end
    class CMsgRemoteClientStartStream < ::Protobuf::Message
      class ReservedGamepad < ::Protobuf::Message; end

    end

    class CMsgRemoteClientStartStreamResponse < ::Protobuf::Message; end
    class CMsgRemoteClientPing < ::Protobuf::Message; end
    class CMsgRemoteClientPingResponse < ::Protobuf::Message; end
    class CMsgRemoteClientAcceptEULA < ::Protobuf::Message; end
    class CMsgRemoteClientGetControllerConfig < ::Protobuf::Message; end
    class CMsgRemoteClientGetControllerConfigResponse < ::Protobuf::Message; end
    class CMsgRemoteClientStreamingEnabled < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CMsgRemoteClientAppStatus
      class AppUpdateInfo
        optional :fixed32, :time_update_start, 1
        optional :uint64, :bytes_to_download, 2
        optional :uint64, :bytes_downloaded, 3
        optional :uint64, :bytes_to_process, 4
        optional :uint64, :bytes_processed, 5
        optional :int32, :estimated_seconds_remaining, 6, :default => -1
        optional :int32, :update_result, 7
        optional :uint32, :update_state, 8
      end

      class ShortcutInfo
        optional :string, :name, 1
        optional :string, :icon, 2
        repeated :string, :categories, 3
      end

      class AppStatus
        optional :uint32, :app_id, 1
        optional :uint32, :app_state, 2
        optional ::SteamCommunity::Internal::CMsgRemoteClientAppStatus::AppUpdateInfo, :update_info, 3
        optional ::SteamCommunity::Internal::CMsgRemoteClientAppStatus::ShortcutInfo, :shortcut_info, 4
      end

      repeated ::SteamCommunity::Internal::CMsgRemoteClientAppStatus::AppStatus, :status_updates, 1
    end

    class CMsgRemoteClientAuth
      optional :uint64, :client_id, 1
      optional ::SteamCommunity::Internal::CMsgRemoteClientBroadcastStatus, :status, 2
    end

    class CMsgRemoteClientAuthResponse
      optional :int32, :eresult, 1, :default => 2
    end

    class CMsgRemoteClientStartStream
      class ReservedGamepad
        optional :uint32, :controller_type, 1
        optional :uint32, :controller_subtype, 2
      end

      optional :uint32, :app_id, 1
      optional :int32, :environment, 2
      optional :int32, :gamepad_count, 3
      optional :int32, :launch_option, 4, :default => -1
      optional :bool, :lock_parental_lock, 5, :default => false
      optional :string, :unlock_parental_lock, 6
      optional :int32, :maximum_resolution_x, 7
      optional :int32, :maximum_resolution_y, 8
      repeated ::SteamCommunity::Internal::CMsgRemoteClientStartStream::ReservedGamepad, :gamepads, 9
      optional :int32, :audio_channel_count, 10, :default => 2
    end

    class CMsgRemoteClientStartStreamResponse
      optional :int32, :e_launch_result, 1, :default => 2
      optional :uint32, :stream_port, 2
      repeated :int32, :launch_options, 3
      optional :bytes, :auth_token, 4
    end

    class CMsgRemoteClientAcceptEULA
      repeated :uint32, :app_id, 1
    end

    class CMsgRemoteClientGetControllerConfig
      optional :uint32, :app_id, 1
      optional :uint32, :controller_index, 3
    end

    class CMsgRemoteClientGetControllerConfigResponse
      optional :int32, :eresult, 1, :default => 2
      optional :bytes, :config_vdf, 2
    end

    class CMsgRemoteClientStreamingEnabled
      required :bool, :enabled, 1
    end

  end

end

