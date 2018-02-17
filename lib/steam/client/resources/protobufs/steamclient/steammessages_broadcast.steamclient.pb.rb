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
    class CBroadcast_BeginBroadcastSession_Request < ::Protobuf::Message; end
    class CBroadcast_BeginBroadcastSession_Response < ::Protobuf::Message; end
    class CBroadcast_EndBroadcastSession_Request < ::Protobuf::Message; end
    class CBroadcast_EndBroadcastSession_Response < ::Protobuf::Message; end
    class CBroadcast_StartBroadcastUpload_Request < ::Protobuf::Message; end
    class CBroadcast_StartBroadcastUpload_Response < ::Protobuf::Message; end
    class CBroadcast_NotifyBroadcastUploadStop_Notification < ::Protobuf::Message; end
    class CBroadcast_WatchBroadcast_Request < ::Protobuf::Message; end
    class CBroadcast_WatchBroadcast_Response < ::Protobuf::Message
      class EWatchResponse < ::Protobuf::Enum
        define :K_Ewatchresponseready, 1
        define :K_Ewatchresponsenotavailable, 2
        define :K_Ewatchresponsewaitingforapproval, 3
        define :K_Ewatchresponsewaitingforstart, 4
        define :K_Ewatchresponseinvalidsession, 5
        define :K_Ewatchresponsetoomanybroadcasts, 6
        define :K_Ewatchresponsewaitingforreconnect, 7
        define :K_Ewatchresponsesystemnotsupported, 8
        define :K_Ewatchresponseuserrestricted, 9
        define :K_Ewatchresponseclientoutofdate, 10
        define :K_Ewatchresponsepooruploadquality, 11
      end

    end

    class CBroadcast_GetBroadcastStatus_Request < ::Protobuf::Message; end
    class CBroadcast_GetBroadcastStatus_Response < ::Protobuf::Message; end
    class CBroadcast_InviteToBroadcast_Request < ::Protobuf::Message; end
    class CBroadcast_InviteToBroadcast_Response < ::Protobuf::Message; end
    class CBroadcast_SendBroadcastStateToServer_Request < ::Protobuf::Message; end
    class CBroadcast_SendBroadcastStateToServer_Response < ::Protobuf::Message; end
    class CBroadcast_NotifyBroadcastSessionHeartbeat_Notification < ::Protobuf::Message; end
    class CBroadcast_GetBroadcastChatInfo_Request < ::Protobuf::Message; end
    class CBroadcast_GetBroadcastChatInfo_Response < ::Protobuf::Message; end
    class CBroadcast_PostChatMessage_Request < ::Protobuf::Message; end
    class CBroadcast_PostChatMessage_Response < ::Protobuf::Message; end
    class CBroadcast_MuteBroadcastChatUser_Request < ::Protobuf::Message; end
    class CBroadcast_MuteBroadcastChatUser_Response < ::Protobuf::Message; end
    class CBroadcast_RemoveUserChatText_Request < ::Protobuf::Message; end
    class CBroadcast_RemoveUserChatText_Response < ::Protobuf::Message; end
    class CBroadcast_GetBroadcastChatUserNames_Request < ::Protobuf::Message; end
    class CBroadcast_GetBroadcastChatUserNames_Response < ::Protobuf::Message
      class PersonaName < ::Protobuf::Message; end

    end

    class CBroadcast_BroadcastViewerState_Notification < ::Protobuf::Message
      class EViewerState < ::Protobuf::Enum
        define :K_Eviewerneedsapproval, 1
        define :K_Eviewerwatching, 2
        define :K_Eviewerleft, 3
      end

    end

    class CBroadcast_WaitingBroadcastViewer_Notification < ::Protobuf::Message; end
    class CBroadcast_StopBroadcastUpload_Notification < ::Protobuf::Message; end
    class CBroadcast_SessionClosed_Notification < ::Protobuf::Message; end
    class CBroadcast_ViewerBroadcastInvite_Notification < ::Protobuf::Message; end
    class CBroadcast_BroadcastStatus_Notification < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CBroadcast_BeginBroadcastSession_Request
      optional :int32, :permission, 1
      optional :uint64, :gameid, 2
      optional :uint64, :client_instance_id, 3
      optional :string, :title, 4
      optional :uint32, :cellid, 5
      optional :uint64, :rtmp_token, 6
    end

    class CBroadcast_BeginBroadcastSession_Response
      optional :fixed64, :broadcast_id, 1
    end

    class CBroadcast_EndBroadcastSession_Request
      optional :fixed64, :broadcast_id, 1
    end

    class CBroadcast_StartBroadcastUpload_Request
      optional :fixed64, :broadcast_id, 1
      optional :uint32, :cellid, 2
      optional :bool, :as_rtmp, 3
      optional :uint32, :delay_seconds, 4
    end

    class CBroadcast_StartBroadcastUpload_Response
      optional :string, :upload_token, 1
      optional :string, :upload_address, 2
      optional :fixed64, :upload_relay_id, 3
    end

    class CBroadcast_NotifyBroadcastUploadStop_Notification
      optional :fixed64, :broadcast_relay_id, 1
      optional :uint32, :upload_result, 2
    end

    class CBroadcast_WatchBroadcast_Request
      optional :fixed64, :steamid, 1
      optional :fixed64, :existing_broadcast_id, 2
      optional :fixed64, :viewer_token, 3
      optional :uint32, :client_ip, 4
      optional :uint32, :client_cell, 5
    end

    class CBroadcast_WatchBroadcast_Response
      optional ::SteamCommunity::Internal::CBroadcast_WatchBroadcast_Response::EWatchResponse, :response, 1, :default => ::SteamCommunity::Internal::CBroadcast_WatchBroadcast_Response::EWatchResponse::K_Ewatchresponseready
      optional :string, :mpd_url, 2
      optional :fixed64, :broadcast_id, 3
      optional :uint64, :gameid, 4
      optional :string, :title, 5
      optional :uint32, :num_viewers, 6
      optional :int32, :permission, 7
      optional :bool, :is_rtmp, 8
      optional :int32, :seconds_delay, 9
      optional :fixed64, :viewer_token, 10
    end

    class CBroadcast_GetBroadcastStatus_Request
      optional :fixed64, :steamid, 1
      optional :fixed64, :broadcast_id, 2
    end

    class CBroadcast_GetBroadcastStatus_Response
      optional :uint64, :gameid, 1
      optional :string, :title, 2
      optional :uint32, :num_viewers, 3
      optional :int32, :permission, 4
      optional :bool, :is_rtmp, 5
      optional :int32, :seconds_delay, 6
      optional :bool, :is_publisher, 7
    end

    class CBroadcast_InviteToBroadcast_Request
      optional :fixed64, :steamid, 1
      optional :bool, :approval_response, 2
    end

    class CBroadcast_InviteToBroadcast_Response
      optional :bool, :success, 1
    end

    class CBroadcast_SendBroadcastStateToServer_Request
      optional :int32, :permission, 1
      optional :uint64, :gameid, 2
      optional :string, :title, 3
      optional :string, :game_data_config, 4
    end

    class CBroadcast_NotifyBroadcastSessionHeartbeat_Notification
      optional :fixed64, :broadcast_id, 1
    end

    class CBroadcast_GetBroadcastChatInfo_Request
      optional :fixed64, :steamid, 1
      optional :fixed64, :broadcast_id, 2
      optional :uint32, :client_ip, 3
      optional :uint32, :client_cell, 4
    end

    class CBroadcast_GetBroadcastChatInfo_Response
      optional :fixed64, :chat_id, 1
      optional :string, :view_url, 2
      optional :string, :view_url_template, 3
    end

    class CBroadcast_PostChatMessage_Request
      optional :fixed64, :chat_id, 1
      optional :string, :message, 2
      optional :uint32, :instance_id, 3
    end

    class CBroadcast_PostChatMessage_Response
      optional :string, :persona_name, 1
      optional :bool, :in_game, 2
      optional :int32, :result, 3
    end

    class CBroadcast_MuteBroadcastChatUser_Request
      optional :fixed64, :chat_id, 1
      optional :fixed64, :user_steamid, 2
      optional :bool, :muted, 3
    end

    class CBroadcast_RemoveUserChatText_Request
      optional :fixed64, :chat_id, 1
      optional :fixed64, :user_steamid, 2
    end

    class CBroadcast_GetBroadcastChatUserNames_Request
      optional :fixed64, :chat_id, 1
      repeated :fixed64, :user_steamid, 2
    end

    class CBroadcast_GetBroadcastChatUserNames_Response
      class PersonaName
        optional :fixed64, :steam_id, 1
        optional :string, :persona, 2
      end

      repeated ::SteamCommunity::Internal::CBroadcast_GetBroadcastChatUserNames_Response::PersonaName, :persona_names, 1
    end

    class CBroadcast_BroadcastViewerState_Notification
      optional :fixed64, :steamid, 1
      optional ::SteamCommunity::Internal::CBroadcast_BroadcastViewerState_Notification::EViewerState, :state, 2, :default => ::SteamCommunity::Internal::CBroadcast_BroadcastViewerState_Notification::EViewerState::K_Eviewerneedsapproval
    end

    class CBroadcast_WaitingBroadcastViewer_Notification
      optional :fixed64, :broadcast_id, 1
    end

    class CBroadcast_StopBroadcastUpload_Notification
      optional :fixed64, :broadcast_id, 1
      optional :fixed64, :broadcast_relay_id, 2
      optional :uint32, :upload_result, 3
      optional :bool, :too_many_poor_uploads, 4
    end

    class CBroadcast_SessionClosed_Notification
      optional :fixed64, :broadcast_id, 1
    end

    class CBroadcast_ViewerBroadcastInvite_Notification
      optional :fixed64, :broadcaster_steamid, 1
    end

    class CBroadcast_BroadcastStatus_Notification
      optional :fixed64, :broadcast_id, 1
      optional :int32, :num_viewers, 2
    end


    ##
    # Service Classes
    #
    class Broadcast < ::Protobuf::Rpc::Service
      rpc :begin_broadcast_session, ::SteamCommunity::Internal::CBroadcast_BeginBroadcastSession_Request, ::SteamCommunity::Internal::CBroadcast_BeginBroadcastSession_Response
      rpc :end_broadcast_session, ::SteamCommunity::Internal::CBroadcast_EndBroadcastSession_Request, ::SteamCommunity::Internal::CBroadcast_EndBroadcastSession_Response
      rpc :start_broadcast_upload, ::SteamCommunity::Internal::CBroadcast_StartBroadcastUpload_Request, ::SteamCommunity::Internal::CBroadcast_StartBroadcastUpload_Response
      rpc :notify_broadcast_upload_stop, ::SteamCommunity::Internal::CBroadcast_NotifyBroadcastUploadStop_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :watch_broadcast, ::SteamCommunity::Internal::CBroadcast_WatchBroadcast_Request, ::SteamCommunity::Internal::CBroadcast_WatchBroadcast_Response
      rpc :get_broadcast_status, ::SteamCommunity::Internal::CBroadcast_GetBroadcastStatus_Request, ::SteamCommunity::Internal::CBroadcast_GetBroadcastStatus_Response
      rpc :invite_to_broadcast, ::SteamCommunity::Internal::CBroadcast_InviteToBroadcast_Request, ::SteamCommunity::Internal::CBroadcast_InviteToBroadcast_Response
      rpc :send_broadcast_state_to_server, ::SteamCommunity::Internal::CBroadcast_SendBroadcastStateToServer_Request, ::SteamCommunity::Internal::CBroadcast_SendBroadcastStateToServer_Response
      rpc :notify_broadcast_session_heartbeat, ::SteamCommunity::Internal::CBroadcast_NotifyBroadcastSessionHeartbeat_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :get_broadcast_chat_info, ::SteamCommunity::Internal::CBroadcast_GetBroadcastChatInfo_Request, ::SteamCommunity::Internal::CBroadcast_GetBroadcastChatInfo_Response
      rpc :post_chat_message, ::SteamCommunity::Internal::CBroadcast_PostChatMessage_Request, ::SteamCommunity::Internal::CBroadcast_PostChatMessage_Response
      rpc :mute_broadcast_chat_user, ::SteamCommunity::Internal::CBroadcast_MuteBroadcastChatUser_Request, ::SteamCommunity::Internal::CBroadcast_MuteBroadcastChatUser_Response
      rpc :remove_user_chat_text, ::SteamCommunity::Internal::CBroadcast_RemoveUserChatText_Request, ::SteamCommunity::Internal::CBroadcast_RemoveUserChatText_Response
      rpc :get_broadcast_chat_user_names, ::SteamCommunity::Internal::CBroadcast_GetBroadcastChatUserNames_Request, ::SteamCommunity::Internal::CBroadcast_GetBroadcastChatUserNames_Response
    end

    class BroadcastClient < ::Protobuf::Rpc::Service
      rpc :notify_broadcast_viewer_state, ::SteamCommunity::Internal::CBroadcast_BroadcastViewerState_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :notify_waiting_broadcast_viewer, ::SteamCommunity::Internal::CBroadcast_WaitingBroadcastViewer_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :notify_stop_broadcast_upload, ::SteamCommunity::Internal::CBroadcast_StopBroadcastUpload_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :notify_session_closed, ::SteamCommunity::Internal::CBroadcast_SessionClosed_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :notify_viewer_broadcast_invite, ::SteamCommunity::Internal::CBroadcast_ViewerBroadcastInvite_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :notify_broadcast_status, ::SteamCommunity::Internal::CBroadcast_BroadcastStatus_Notification, ::SteamCommunity::Internal::NoResponse
    end

  end

end

