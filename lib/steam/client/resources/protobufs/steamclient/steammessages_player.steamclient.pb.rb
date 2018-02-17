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
    class CPlayer_GetGameBadgeLevels_Request < ::Protobuf::Message; end
    class CPlayer_GetGameBadgeLevels_Response < ::Protobuf::Message
      class Badge < ::Protobuf::Message; end

    end

    class CPlayer_GetLastPlayedTimes_Request < ::Protobuf::Message; end
    class CPlayer_GetLastPlayedTimes_Response < ::Protobuf::Message
      class Game < ::Protobuf::Message; end

    end

    class CPlayer_AcceptSSA_Request < ::Protobuf::Message; end
    class CPlayer_AcceptSSA_Response < ::Protobuf::Message; end
    class CPlayer_LastPlayedTimes_Notification < ::Protobuf::Message; end
    class CPlayerClient_GetSystemInformation_Request < ::Protobuf::Message; end
    class CClientSystemInfo < ::Protobuf::Message
      class CPU < ::Protobuf::Message; end
      class VideoCard < ::Protobuf::Message; end

    end

    class CPlayerClient_GetSystemInformation_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CPlayer_GetGameBadgeLevels_Request
      optional :uint32, :appid, 1
    end

    class CPlayer_GetGameBadgeLevels_Response
      class Badge
        optional :int32, :level, 1
        optional :int32, :series, 2
        optional :uint32, :border_color, 3
      end

      optional :uint32, :player_level, 1
      repeated ::SteamCommunity::Internal::CPlayer_GetGameBadgeLevels_Response::Badge, :badges, 2
    end

    class CPlayer_GetLastPlayedTimes_Request
      optional :uint32, :min_last_played, 1
    end

    class CPlayer_GetLastPlayedTimes_Response
      class Game
        optional :int32, :appid, 1
        optional :uint32, :last_playtime, 2
        optional :int32, :playtime_2weeks, 3
        optional :int32, :playtime_forever, 4
      end

      repeated ::SteamCommunity::Internal::CPlayer_GetLastPlayedTimes_Response::Game, :games, 1
    end

    class CPlayer_LastPlayedTimes_Notification
      repeated ::SteamCommunity::Internal::CPlayer_GetLastPlayedTimes_Response::Game, :games, 1
    end

    class CClientSystemInfo
      class CPU
        optional :int32, :speed_mhz, 1
        optional :string, :vendor, 2
        optional :int32, :logical_processors, 3
        optional :int32, :physical_processors, 4
        optional :bool, :hyperthreading, 5
        optional :bool, :fcmov, 6
        optional :bool, :sse2, 7
        optional :bool, :sse3, 8
        optional :bool, :ssse3, 9
        optional :bool, :sse4a, 10
        optional :bool, :sse41, 11
        optional :bool, :sse42, 12
      end

      class VideoCard
        optional :string, :driver, 1
        optional :string, :driver_version, 2
        optional :uint32, :driver_date, 3
        optional :string, :directx_version, 4
        optional :string, :opengl_version, 5
        optional :int32, :vendorid, 6
        optional :int32, :deviceid, 7
        optional :int32, :vram_mb, 8
      end

      optional ::SteamCommunity::Internal::CClientSystemInfo::CPU, :cpu, 1
      optional ::SteamCommunity::Internal::CClientSystemInfo::VideoCard, :video_card, 2
      optional :string, :operating_system, 3
      optional :bool, :os_64bit, 4
      optional :int32, :system_ram_mb, 5
      optional :string, :audio_device, 6
      optional :string, :audio_driver_version, 7
    end

    class CPlayerClient_GetSystemInformation_Response
      optional ::SteamCommunity::Internal::CClientSystemInfo, :system_info, 1
    end


    ##
    # Service Classes
    #
    class Player < ::Protobuf::Rpc::Service
      rpc :get_game_badge_levels, ::SteamCommunity::Internal::CPlayer_GetGameBadgeLevels_Request, ::SteamCommunity::Internal::CPlayer_GetGameBadgeLevels_Response
      rpc :client_get_last_played_times, ::SteamCommunity::Internal::CPlayer_GetLastPlayedTimes_Request, ::SteamCommunity::Internal::CPlayer_GetLastPlayedTimes_Response
      rpc :accept_ssa, ::SteamCommunity::Internal::CPlayer_AcceptSSA_Request, ::SteamCommunity::Internal::CPlayer_AcceptSSA_Response
    end

    class PlayerClient < ::Protobuf::Rpc::Service
      rpc :notify_last_played_times, ::SteamCommunity::Internal::CPlayer_LastPlayedTimes_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :get_system_information, ::SteamCommunity::Internal::CPlayerClient_GetSystemInformation_Request, ::SteamCommunity::Internal::CPlayerClient_GetSystemInformation_Response
    end

  end

end

