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
    class CGameNotifications_Variable < ::Protobuf::Message; end
    class CGameNotifications_LocalizedText < ::Protobuf::Message; end
    class CGameNotifications_UserStatus < ::Protobuf::Message; end
    class CGameNotifications_CreateSession_Request < ::Protobuf::Message; end
    class CGameNotifications_CreateSession_Response < ::Protobuf::Message; end
    class CGameNotifications_DeleteSession_Request < ::Protobuf::Message; end
    class CGameNotifications_DeleteSession_Response < ::Protobuf::Message; end
    class CGameNotifications_UpdateSession_Request < ::Protobuf::Message; end
    class CGameNotifications_UpdateSession_Response < ::Protobuf::Message; end
    class CGameNotifications_EnumerateSessions_Request < ::Protobuf::Message; end
    class CGameNotifications_Session < ::Protobuf::Message; end
    class CGameNotifications_EnumerateSessions_Response < ::Protobuf::Message; end
    class CGameNotifications_GetSessionDetails_Request < ::Protobuf::Message
      class RequestedSession < ::Protobuf::Message; end

    end

    class CGameNotifications_GetSessionDetails_Response < ::Protobuf::Message; end
    class GameNotificationSettings < ::Protobuf::Message; end
    class CGameNotifications_UpdateNotificationSettings_Request < ::Protobuf::Message; end
    class CGameNotifications_UpdateNotificationSettings_Response < ::Protobuf::Message; end
    class CGameNotifications_OnNotificationsRequested_Notification < ::Protobuf::Message; end
    class CGameNotifications_OnUserStatusChanged_Notification < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CGameNotifications_Variable
      optional :string, :key, 1
      optional :string, :value, 2
    end

    class CGameNotifications_LocalizedText
      optional :string, :token, 1
      repeated ::SteamCommunity::Internal::CGameNotifications_Variable, :variables, 2
      optional :string, :rendered_text, 3
    end

    class CGameNotifications_UserStatus
      optional :fixed64, :steamid, 1
      optional :string, :state, 2
      optional ::SteamCommunity::Internal::CGameNotifications_LocalizedText, :title, 3
      optional ::SteamCommunity::Internal::CGameNotifications_LocalizedText, :message, 4
    end

    class CGameNotifications_CreateSession_Request
      optional :uint32, :appid, 1
      optional :uint64, :context, 2
      optional ::SteamCommunity::Internal::CGameNotifications_LocalizedText, :title, 3
      repeated ::SteamCommunity::Internal::CGameNotifications_UserStatus, :users, 4
      optional :fixed64, :steamid, 5
    end

    class CGameNotifications_CreateSession_Response
      optional :uint64, :sessionid, 1
    end

    class CGameNotifications_DeleteSession_Request
      optional :uint64, :sessionid, 1
      optional :uint32, :appid, 2
      optional :fixed64, :steamid, 3
    end

    class CGameNotifications_UpdateSession_Request
      optional :uint64, :sessionid, 1
      optional :uint32, :appid, 2
      optional ::SteamCommunity::Internal::CGameNotifications_LocalizedText, :title, 3
      repeated ::SteamCommunity::Internal::CGameNotifications_UserStatus, :users, 4
      optional :fixed64, :steamid, 6
    end

    class CGameNotifications_EnumerateSessions_Request
      optional :uint32, :appid, 1
      optional :bool, :include_all_user_messages, 3
      optional :bool, :include_auth_user_message, 4
      optional :string, :language, 5
    end

    class CGameNotifications_Session
      optional :uint64, :sessionid, 1
      optional :uint64, :appid, 2
      optional :uint64, :context, 3
      optional ::SteamCommunity::Internal::CGameNotifications_LocalizedText, :title, 4
      optional :uint32, :time_created, 5
      optional :uint32, :time_updated, 6
      repeated ::SteamCommunity::Internal::CGameNotifications_UserStatus, :user_status, 7
    end

    class CGameNotifications_EnumerateSessions_Response
      repeated ::SteamCommunity::Internal::CGameNotifications_Session, :sessions, 1
    end

    class CGameNotifications_GetSessionDetails_Request
      class RequestedSession
        optional :uint64, :sessionid, 1
        optional :bool, :include_auth_user_message, 3
      end

      repeated ::SteamCommunity::Internal::CGameNotifications_GetSessionDetails_Request::RequestedSession, :sessions, 1
      optional :uint32, :appid, 2
      optional :string, :language, 3
    end

    class CGameNotifications_GetSessionDetails_Response
      repeated ::SteamCommunity::Internal::CGameNotifications_Session, :sessions, 1
    end

    class GameNotificationSettings
      optional :uint32, :appid, 1
      optional :bool, :allow_notifications, 2
    end

    class CGameNotifications_UpdateNotificationSettings_Request
      repeated ::SteamCommunity::Internal::GameNotificationSettings, :game_notification_settings, 1
    end

    class CGameNotifications_OnNotificationsRequested_Notification
      optional :fixed64, :steamid, 1
      optional :uint32, :appid, 2
    end

    class CGameNotifications_OnUserStatusChanged_Notification
      optional :fixed64, :steamid, 1
      optional :uint64, :sessionid, 2
      optional :uint32, :appid, 3
      optional ::SteamCommunity::Internal::CGameNotifications_UserStatus, :status, 4
      optional :bool, :removed, 5
    end


    ##
    # Service Classes
    #
    class GameNotifications < ::Protobuf::Rpc::Service
      rpc :user_create_session, ::SteamCommunity::Internal::CGameNotifications_CreateSession_Request, ::SteamCommunity::Internal::CGameNotifications_CreateSession_Response
      rpc :user_delete_session, ::SteamCommunity::Internal::CGameNotifications_DeleteSession_Request, ::SteamCommunity::Internal::CGameNotifications_DeleteSession_Response
      rpc :user_update_session, ::SteamCommunity::Internal::CGameNotifications_UpdateSession_Request, ::SteamCommunity::Internal::CGameNotifications_UpdateSession_Response
      rpc :enumerate_sessions, ::SteamCommunity::Internal::CGameNotifications_EnumerateSessions_Request, ::SteamCommunity::Internal::CGameNotifications_EnumerateSessions_Response
      rpc :get_session_details, ::SteamCommunity::Internal::CGameNotifications_GetSessionDetails_Request, ::SteamCommunity::Internal::CGameNotifications_GetSessionDetails_Response
      rpc :update_notification_settings, ::SteamCommunity::Internal::CGameNotifications_UpdateNotificationSettings_Request, ::SteamCommunity::Internal::CGameNotifications_UpdateNotificationSettings_Response
    end

    class GameNotificationsClient < ::Protobuf::Rpc::Service
      rpc :on_notifications_requested, ::SteamCommunity::Internal::CGameNotifications_OnNotificationsRequested_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :on_user_status_changed, ::SteamCommunity::Internal::CGameNotifications_OnUserStatusChanged_Notification, ::SteamCommunity::Internal::NoResponse
    end

  end

end

