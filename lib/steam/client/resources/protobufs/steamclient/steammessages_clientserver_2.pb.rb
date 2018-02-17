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
    class CMsgClientUCMAddScreenshot < ::Protobuf::Message
      class Tag < ::Protobuf::Message; end

    end

    class CMsgClientUCMAddScreenshotResponse < ::Protobuf::Message; end
    class CMsgClientUCMDeleteScreenshot < ::Protobuf::Message; end
    class CMsgClientUCMDeleteScreenshotResponse < ::Protobuf::Message; end
    class CMsgClientUCMPublishFile < ::Protobuf::Message; end
    class CMsgClientUCMPublishFileResponse < ::Protobuf::Message; end
    class CMsgClientUCMUpdatePublishedFile < ::Protobuf::Message
      class KeyValueTag < ::Protobuf::Message; end
      class AdditionalPreview < ::Protobuf::Message; end

    end

    class CMsgClientUCMUpdatePublishedFileResponse < ::Protobuf::Message; end
    class CMsgClientUCMDeletePublishedFile < ::Protobuf::Message; end
    class CMsgClientUCMDeletePublishedFileResponse < ::Protobuf::Message; end
    class CMsgClientUCMEnumerateUserPublishedFiles < ::Protobuf::Message; end
    class CMsgClientUCMEnumerateUserPublishedFilesResponse < ::Protobuf::Message
      class PublishedFileId < ::Protobuf::Message; end

    end

    class CMsgClientUCMEnumerateUserSubscribedFiles < ::Protobuf::Message; end
    class CMsgClientUCMEnumerateUserSubscribedFilesResponse < ::Protobuf::Message
      class PublishedFileId < ::Protobuf::Message; end

    end

    class CMsgClientUCMEnumerateUserSubscribedFilesWithUpdates < ::Protobuf::Message; end
    class CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse < ::Protobuf::Message
      class PublishedFileId < ::Protobuf::Message; end

    end

    class CMsgClientUCMPublishedFileSubscribed < ::Protobuf::Message; end
    class CMsgClientUCMPublishedFileUnsubscribed < ::Protobuf::Message; end
    class CMsgClientUCMPublishedFileDeleted < ::Protobuf::Message; end
    class CMsgClientUCMPublishedFileUpdated < ::Protobuf::Message; end
    class CMsgClientWorkshopItemChangesRequest < ::Protobuf::Message; end
    class CMsgClientWorkshopItemChangesResponse < ::Protobuf::Message
      class WorkshopItemInfo < ::Protobuf::Message; end

    end

    class CMsgClientWorkshopItemInfoRequest < ::Protobuf::Message
      class WorkshopItem < ::Protobuf::Message; end

    end

    class CMsgClientWorkshopItemInfoResponse < ::Protobuf::Message
      class WorkshopItemInfo < ::Protobuf::Message; end

    end

    class CMsgClientUCMGetPublishedFilesForUser < ::Protobuf::Message; end
    class CMsgClientUCMGetPublishedFilesForUserResponse < ::Protobuf::Message
      class PublishedFileId < ::Protobuf::Message; end

    end

    class CMsgClientUCMSetUserPublishedFileAction < ::Protobuf::Message; end
    class CMsgClientUCMSetUserPublishedFileActionResponse < ::Protobuf::Message; end
    class CMsgClientUCMEnumeratePublishedFilesByUserAction < ::Protobuf::Message; end
    class CMsgClientUCMEnumeratePublishedFilesByUserActionResponse < ::Protobuf::Message
      class PublishedFileId < ::Protobuf::Message; end

    end

    class CMsgClientScreenshotsChanged < ::Protobuf::Message; end
    class CMsgClientUpdateUserGameInfo < ::Protobuf::Message; end
    class CMsgClientRichPresenceUpload < ::Protobuf::Message; end
    class CMsgClientRichPresenceRequest < ::Protobuf::Message; end
    class CMsgClientRichPresenceInfo < ::Protobuf::Message
      class RichPresence < ::Protobuf::Message; end

    end

    class CMsgClientCheckFileSignature < ::Protobuf::Message; end
    class CMsgClientCheckFileSignatureResponse < ::Protobuf::Message; end
    class CMsgClientReadMachineAuth < ::Protobuf::Message; end
    class CMsgClientReadMachineAuthResponse < ::Protobuf::Message; end
    class CMsgClientUpdateMachineAuth < ::Protobuf::Message; end
    class CMsgClientUpdateMachineAuthResponse < ::Protobuf::Message; end
    class CMsgClientRequestMachineAuth < ::Protobuf::Message; end
    class CMsgClientRequestMachineAuthResponse < ::Protobuf::Message; end
    class CMsgClientCreateFriendsGroup < ::Protobuf::Message; end
    class CMsgClientCreateFriendsGroupResponse < ::Protobuf::Message; end
    class CMsgClientDeleteFriendsGroup < ::Protobuf::Message; end
    class CMsgClientDeleteFriendsGroupResponse < ::Protobuf::Message; end
    class CMsgClientRenameFriendsGroup < ::Protobuf::Message; end
    class CMsgClientRenameFriendsGroupResponse < ::Protobuf::Message; end
    class CMsgClientAddFriendToGroup < ::Protobuf::Message; end
    class CMsgClientAddFriendToGroupResponse < ::Protobuf::Message; end
    class CMsgClientRemoveFriendFromGroup < ::Protobuf::Message; end
    class CMsgClientRemoveFriendFromGroupResponse < ::Protobuf::Message; end
    class CMsgClientRegisterKey < ::Protobuf::Message; end
    class CMsgClientPurchaseResponse < ::Protobuf::Message; end
    class CMsgClientActivateOEMLicense < ::Protobuf::Message; end
    class CMsgClientRegisterOEMMachine < ::Protobuf::Message; end
    class CMsgClientRegisterOEMMachineResponse < ::Protobuf::Message; end
    class CMsgClientPurchaseWithMachineID < ::Protobuf::Message; end
    class CMsgTrading_InitiateTradeRequest < ::Protobuf::Message; end
    class CMsgTrading_InitiateTradeResponse < ::Protobuf::Message; end
    class CMsgTrading_CancelTradeRequest < ::Protobuf::Message; end
    class CMsgTrading_StartSession < ::Protobuf::Message; end
    class CMsgClientEmailChange < ::Protobuf::Message; end
    class CMsgClientEmailChangeResponse < ::Protobuf::Message; end
    class CMsgClientGetCDNAuthToken < ::Protobuf::Message; end
    class CMsgClientGetDepotDecryptionKey < ::Protobuf::Message; end
    class CMsgClientGetDepotDecryptionKeyResponse < ::Protobuf::Message; end
    class CMsgClientCheckAppBetaPassword < ::Protobuf::Message; end
    class CMsgClientCheckAppBetaPasswordResponse < ::Protobuf::Message
      class BetaPassword < ::Protobuf::Message; end

    end

    class CMsgClientUpdateAppJobReport < ::Protobuf::Message; end
    class CMsgClientDPContentStatsReport < ::Protobuf::Message; end
    class CMsgClientGetCDNAuthTokenResponse < ::Protobuf::Message; end
    class CMsgDownloadRateStatistics < ::Protobuf::Message
      class StatsInfo < ::Protobuf::Message; end

    end

    class CMsgClientRequestAccountData < ::Protobuf::Message; end
    class CMsgClientRequestAccountDataResponse < ::Protobuf::Message; end
    class CMsgClientUGSGetGlobalStats < ::Protobuf::Message; end
    class CMsgClientUGSGetGlobalStatsResponse < ::Protobuf::Message
      class Day < ::Protobuf::Message
        class Stat < ::Protobuf::Message; end

      end


    end

    class CMsgGameServerData < ::Protobuf::Message
      class Player < ::Protobuf::Message; end

    end

    class CMsgGameServerRemove < ::Protobuf::Message; end
    class CMsgClientGMSServerQuery < ::Protobuf::Message; end
    class CMsgGMSClientServerQueryResponse < ::Protobuf::Message
      class Server < ::Protobuf::Message; end

    end

    class CMsgGameServerOutOfDate < ::Protobuf::Message; end
    class CMsgClientRedeemGuestPass < ::Protobuf::Message; end
    class CMsgClientRedeemGuestPassResponse < ::Protobuf::Message; end
    class CMsgClientGetClanActivityCounts < ::Protobuf::Message; end
    class CMsgClientGetClanActivityCountsResponse < ::Protobuf::Message; end
    class CMsgClientOGSReportString < ::Protobuf::Message; end
    class CMsgClientOGSReportBug < ::Protobuf::Message; end
    class CMsgGSAssociateWithClan < ::Protobuf::Message; end
    class CMsgGSAssociateWithClanResponse < ::Protobuf::Message; end
    class CMsgGSComputeNewPlayerCompatibility < ::Protobuf::Message; end
    class CMsgGSComputeNewPlayerCompatibilityResponse < ::Protobuf::Message; end
    class CMsgClientSentLogs < ::Protobuf::Message; end
    class CMsgGCClient < ::Protobuf::Message; end
    class CMsgClientRequestFreeLicense < ::Protobuf::Message; end
    class CMsgClientRequestFreeLicenseResponse < ::Protobuf::Message; end
    class CMsgDRMDownloadRequestWithCrashData < ::Protobuf::Message; end
    class CMsgDRMDownloadResponse < ::Protobuf::Message; end
    class CMsgDRMFinalResult < ::Protobuf::Message; end
    class CMsgClientDPCheckSpecialSurvey < ::Protobuf::Message; end
    class CMsgClientDPCheckSpecialSurveyResponse < ::Protobuf::Message; end
    class CMsgClientDPSendSpecialSurveyResponse < ::Protobuf::Message; end
    class CMsgClientDPSendSpecialSurveyResponseReply < ::Protobuf::Message; end
    class CMsgClientRequestForgottenPasswordEmail < ::Protobuf::Message; end
    class CMsgClientRequestForgottenPasswordEmailResponse < ::Protobuf::Message; end
    class CMsgClientItemAnnouncements < ::Protobuf::Message; end
    class CMsgClientRequestItemAnnouncements < ::Protobuf::Message; end
    class CMsgClientUserNotifications < ::Protobuf::Message
      class Notification < ::Protobuf::Message; end

    end

    class CMsgClientCommentNotifications < ::Protobuf::Message; end
    class CMsgClientRequestCommentNotifications < ::Protobuf::Message; end
    class CMsgClientOfflineMessageNotification < ::Protobuf::Message; end
    class CMsgClientRequestOfflineMessageCount < ::Protobuf::Message; end
    class CMsgClientFSGetFriendMessageHistory < ::Protobuf::Message; end
    class CMsgClientFSGetFriendMessageHistoryResponse < ::Protobuf::Message
      class FriendMessage < ::Protobuf::Message; end

    end

    class CMsgClientFSGetFriendMessageHistoryForOfflineMessages < ::Protobuf::Message; end
    class CMsgClientFSGetFriendsSteamLevels < ::Protobuf::Message; end
    class CMsgClientFSGetFriendsSteamLevelsResponse < ::Protobuf::Message
      class Friend < ::Protobuf::Message; end

    end

    class CMsgClientEmailAddrInfo < ::Protobuf::Message; end
    class CMsgCREEnumeratePublishedFiles < ::Protobuf::Message; end
    class CMsgCREEnumeratePublishedFilesResponse < ::Protobuf::Message
      class PublishedFileId < ::Protobuf::Message; end

    end

    class CMsgCREItemVoteSummary < ::Protobuf::Message
      class PublishedFileId < ::Protobuf::Message; end

    end

    class CMsgCREItemVoteSummaryResponse < ::Protobuf::Message
      class ItemVoteSummary < ::Protobuf::Message; end

    end

    class CMsgCREUpdateUserPublishedItemVote < ::Protobuf::Message; end
    class CMsgCREUpdateUserPublishedItemVoteResponse < ::Protobuf::Message; end
    class CMsgCREGetUserPublishedItemVoteDetails < ::Protobuf::Message
      class PublishedFileId < ::Protobuf::Message; end

    end

    class CMsgCREGetUserPublishedItemVoteDetailsResponse < ::Protobuf::Message
      class UserItemVoteDetail < ::Protobuf::Message; end

    end

    class CMsgGameServerPingSample < ::Protobuf::Message
      class Sample < ::Protobuf::Message; end

    end

    class CMsgFSGetFollowerCount < ::Protobuf::Message; end
    class CMsgFSGetFollowerCountResponse < ::Protobuf::Message; end
    class CMsgFSGetIsFollowing < ::Protobuf::Message; end
    class CMsgFSGetIsFollowingResponse < ::Protobuf::Message; end
    class CMsgFSEnumerateFollowingList < ::Protobuf::Message; end
    class CMsgFSEnumerateFollowingListResponse < ::Protobuf::Message; end
    class CMsgDPGetNumberOfCurrentPlayers < ::Protobuf::Message; end
    class CMsgDPGetNumberOfCurrentPlayersResponse < ::Protobuf::Message; end
    class CMsgClientFriendUserStatusPublished < ::Protobuf::Message; end
    class CMsgClientServiceMethod < ::Protobuf::Message; end
    class CMsgClientServiceMethodResponse < ::Protobuf::Message; end
    class CMsgClientUIMode < ::Protobuf::Message; end
    class CMsgClientVanityURLChangedNotification < ::Protobuf::Message; end
    class CMsgClientAuthorizeLocalDeviceRequest < ::Protobuf::Message; end
    class CMsgClientAuthorizeLocalDevice < ::Protobuf::Message; end
    class CMsgClientDeauthorizeDeviceRequest < ::Protobuf::Message; end
    class CMsgClientDeauthorizeDevice < ::Protobuf::Message; end
    class CMsgClientUseLocalDeviceAuthorizations < ::Protobuf::Message
      class DeviceToken < ::Protobuf::Message; end

    end

    class CMsgClientGetAuthorizedDevices < ::Protobuf::Message; end
    class CMsgClientGetAuthorizedDevicesResponse < ::Protobuf::Message
      class AuthorizedDevice < ::Protobuf::Message; end

    end

    class CMsgClientGetEmoticonList < ::Protobuf::Message; end
    class CMsgClientEmoticonList < ::Protobuf::Message
      class Emoticon < ::Protobuf::Message; end

    end

    class CMsgClientSharedLibraryLockStatus < ::Protobuf::Message
      class LockedLibrary < ::Protobuf::Message; end

    end

    class CMsgClientSharedLibraryStopPlaying < ::Protobuf::Message
      class StopApp < ::Protobuf::Message; end

    end

    class CMsgClientServiceCall < ::Protobuf::Message; end
    class CMsgClientServiceModule < ::Protobuf::Message; end
    class CMsgClientServiceCallResponse < ::Protobuf::Message; end
    class CMsgAMUnlockStreaming < ::Protobuf::Message; end
    class CMsgAMUnlockStreamingResponse < ::Protobuf::Message; end
    class CMsgClientPlayingSessionState < ::Protobuf::Message; end
    class CMsgClientKickPlayingSession < ::Protobuf::Message; end
    class CMsgClientCreateAccount < ::Protobuf::Message; end
    class CMsgClientCreateAccountResponse < ::Protobuf::Message; end
    class CMsgClientVoiceCallPreAuthorize < ::Protobuf::Message; end
    class CMsgClientVoiceCallPreAuthorizeResponse < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CMsgClientUCMAddScreenshot
      class Tag
        optional :string, :tag_name, 1
        optional :string, :tag_value, 2
      end

      optional :uint32, :appid, 1
      optional :string, :filename, 2
      optional :string, :thumbname, 3
      optional :string, :vr_filename, 14
      optional :fixed32, :rtime32_created, 4
      optional :uint32, :width, 5
      optional :uint32, :height, 6
      optional :uint32, :permissions, 7
      optional :string, :caption, 8
      optional :string, :shortcut_name, 9
      repeated ::SteamCommunity::Internal::CMsgClientUCMAddScreenshot::Tag, :tag, 10
      repeated :fixed64, :tagged_steamid, 11
      optional :bool, :spoiler_tag, 12
      repeated :uint64, :tagged_publishedfileid, 13
    end

    class CMsgClientUCMAddScreenshotResponse
      optional :int32, :eresult, 1, :default => 2
      optional :fixed64, :screenshotid, 2, :default => 18446744073709551615
    end

    class CMsgClientUCMDeleteScreenshot
      optional :fixed64, :screenshotid, 1, :default => 18446744073709551615
    end

    class CMsgClientUCMDeleteScreenshotResponse
      optional :int32, :eresult, 1, :default => 2
    end

    class CMsgClientUCMPublishFile
      optional :uint32, :app_id, 1
      optional :string, :file_name, 2
      optional :string, :preview_file_name, 3
      optional :uint32, :consumer_app_id, 4
      optional :string, :title, 5
      optional :string, :description, 6
      repeated :string, :tags, 8
      optional :bool, :workshop_file, 9
      optional :int32, :visibility, 10
      optional :uint32, :file_type, 11
      optional :string, :url, 12
      optional :uint32, :video_provider, 13
      optional :string, :video_account_name, 14
      optional :string, :video_identifier, 15
      optional :bool, :in_progress, 16
    end

    class CMsgClientUCMPublishFileResponse
      optional :int32, :eresult, 1, :default => 2
      optional :fixed64, :published_file_id, 2, :default => 18446744073709551615
      optional :bool, :needs_workshop_legal_agreement_acceptance, 3, :default => false
    end

    class CMsgClientUCMUpdatePublishedFile
      class KeyValueTag
        optional :string, :key, 1
        optional :string, :value, 2
      end

      class AdditionalPreview
        optional :string, :original_file_name, 1
        optional :string, :internal_file_name, 2
        optional :string, :videoid, 3
        optional :uint32, :preview_type, 4
        optional :int32, :update_index, 5, :default => -1
      end

      optional :uint32, :app_id, 1
      optional :fixed64, :published_file_id, 2
      optional :string, :file_name, 3
      optional :string, :preview_file_name, 4
      optional :string, :title, 5
      optional :string, :description, 6
      repeated :string, :tags, 7
      optional :int32, :visibility, 8
      optional :bool, :update_file, 9
      optional :bool, :update_preview_file, 10
      optional :bool, :update_title, 11
      optional :bool, :update_description, 12
      optional :bool, :update_tags, 13
      optional :bool, :update_visibility, 14
      optional :string, :change_description, 15
      optional :bool, :update_url, 16
      optional :string, :url, 17
      optional :bool, :update_content_manifest, 18
      optional :fixed64, :content_manifest, 19
      optional :string, :metadata, 20
      optional :bool, :update_metadata, 21
      optional :int32, :language, 22, :default => 0
      repeated :string, :removed_kvtags, 23
      repeated ::SteamCommunity::Internal::CMsgClientUCMUpdatePublishedFile::KeyValueTag, :kvtags, 24
      repeated ::SteamCommunity::Internal::CMsgClientUCMUpdatePublishedFile::AdditionalPreview, :previews, 25
      repeated :int32, :previews_to_remove, 26
      optional :bool, :clear_in_progress, 27
    end

    class CMsgClientUCMUpdatePublishedFileResponse
      optional :int32, :eresult, 1, :default => 2
      optional :bool, :needs_workshop_legal_agreement_acceptance, 2, :default => false
    end

    class CMsgClientUCMDeletePublishedFile
      optional :fixed64, :published_file_id, 1
    end

    class CMsgClientUCMDeletePublishedFileResponse
      optional :int32, :eresult, 1, :default => 2
    end

    class CMsgClientUCMEnumerateUserPublishedFiles
      optional :uint32, :app_id, 1
      optional :uint32, :start_index, 2
      optional :uint32, :sort_order, 3
    end

    class CMsgClientUCMEnumerateUserPublishedFilesResponse
      class PublishedFileId
        optional :fixed64, :published_file_id, 1
      end

      optional :int32, :eresult, 1, :default => 2
      repeated ::SteamCommunity::Internal::CMsgClientUCMEnumerateUserPublishedFilesResponse::PublishedFileId, :published_files, 2
      optional :uint32, :total_results, 3
    end

    class CMsgClientUCMEnumerateUserSubscribedFiles
      optional :uint32, :app_id, 1
      optional :uint32, :start_index, 2
      optional :uint32, :list_type, 3, :default => 1
      optional :uint32, :matching_file_type, 4, :default => 0
      optional :uint32, :count, 5, :default => 50
    end

    class CMsgClientUCMEnumerateUserSubscribedFilesResponse
      class PublishedFileId
        optional :fixed64, :published_file_id, 1
        optional :fixed32, :rtime32_subscribed, 2, :default => 0
      end

      optional :int32, :eresult, 1, :default => 2
      repeated ::SteamCommunity::Internal::CMsgClientUCMEnumerateUserSubscribedFilesResponse::PublishedFileId, :subscribed_files, 2
      optional :uint32, :total_results, 3
    end

    class CMsgClientUCMEnumerateUserSubscribedFilesWithUpdates
      optional :uint32, :app_id, 1
      optional :uint32, :start_index, 2
      optional :fixed32, :start_time, 3
    end

    class CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse
      class PublishedFileId
        optional :fixed64, :published_file_id, 1
        optional :fixed32, :rtime32_subscribed, 2, :default => 0
        optional :uint32, :appid, 3
        optional :fixed64, :file_hcontent, 4
        optional :uint32, :file_size, 5
        optional :fixed32, :rtime32_last_updated, 6
        optional :bool, :is_depot_content, 7
      end

      optional :int32, :eresult, 1, :default => 2
      repeated ::SteamCommunity::Internal::CMsgClientUCMEnumerateUserSubscribedFilesWithUpdatesResponse::PublishedFileId, :subscribed_files, 2
      optional :uint32, :total_results, 3
    end

    class CMsgClientUCMPublishedFileSubscribed
      optional :fixed64, :published_file_id, 1
      optional :uint32, :app_id, 2
      optional :fixed64, :file_hcontent, 3
      optional :uint32, :file_size, 4
      optional :uint32, :rtime_subscribed, 5
      optional :bool, :is_depot_content, 6
      optional :uint32, :rtime_updated, 7
    end

    class CMsgClientUCMPublishedFileUnsubscribed
      optional :fixed64, :published_file_id, 1
      optional :uint32, :app_id, 2
    end

    class CMsgClientUCMPublishedFileDeleted
      optional :fixed64, :published_file_id, 1
      optional :uint32, :app_id, 2
    end

    class CMsgClientUCMPublishedFileUpdated
      optional :fixed64, :published_file_id, 1
      optional :uint32, :app_id, 2
      optional :uint32, :time_updated, 3
      optional :fixed64, :hcontent, 4
      optional :fixed32, :file_size, 5
      optional :bool, :is_depot_content, 6
    end

    class CMsgClientWorkshopItemChangesRequest
      optional :uint32, :app_id, 1
      optional :uint32, :last_time_updated, 2
      optional :uint32, :num_items_needed, 3
    end

    class CMsgClientWorkshopItemChangesResponse
      class WorkshopItemInfo
        optional :fixed64, :published_file_id, 1
        optional :uint32, :time_updated, 2
        optional :fixed64, :manifest_id, 3
      end

      optional :int32, :eresult, 1, :default => 2
      optional :uint32, :update_time, 2
      repeated ::SteamCommunity::Internal::CMsgClientWorkshopItemChangesResponse::WorkshopItemInfo, :workshop_items, 5
    end

    class CMsgClientWorkshopItemInfoRequest
      class WorkshopItem
        optional :fixed64, :published_file_id, 1
        optional :uint32, :time_updated, 2
      end

      optional :uint32, :app_id, 1
      optional :uint32, :last_time_updated, 2
      repeated ::SteamCommunity::Internal::CMsgClientWorkshopItemInfoRequest::WorkshopItem, :workshop_items, 3
    end

    class CMsgClientWorkshopItemInfoResponse
      class WorkshopItemInfo
        optional :fixed64, :published_file_id, 1
        optional :uint32, :time_updated, 2
        optional :fixed64, :manifest_id, 3
        optional :bool, :is_legacy, 4
      end

      optional :int32, :eresult, 1, :default => 2
      optional :uint32, :update_time, 2
      repeated ::SteamCommunity::Internal::CMsgClientWorkshopItemInfoResponse::WorkshopItemInfo, :workshop_items, 3
      repeated :fixed64, :private_items, 4
    end

    class CMsgClientUCMGetPublishedFilesForUser
      optional :uint32, :app_id, 1
      optional :fixed64, :creator_steam_id, 2
      repeated :string, :required_tags, 3
      repeated :string, :excluded_tags, 4
      optional :uint32, :start_index, 5
    end

    class CMsgClientUCMGetPublishedFilesForUserResponse
      class PublishedFileId
        optional :fixed64, :published_file_id, 1
      end

      optional :int32, :eresult, 1, :default => 2
      repeated ::SteamCommunity::Internal::CMsgClientUCMGetPublishedFilesForUserResponse::PublishedFileId, :published_files, 2
      optional :uint32, :total_results, 3
    end

    class CMsgClientUCMSetUserPublishedFileAction
      optional :fixed64, :published_file_id, 1
      optional :uint32, :app_id, 2
      optional :int32, :action, 3
    end

    class CMsgClientUCMSetUserPublishedFileActionResponse
      optional :int32, :eresult, 1, :default => 2
    end

    class CMsgClientUCMEnumeratePublishedFilesByUserAction
      optional :uint32, :app_id, 1
      optional :uint32, :start_index, 2
      optional :int32, :action, 3
    end

    class CMsgClientUCMEnumeratePublishedFilesByUserActionResponse
      class PublishedFileId
        optional :fixed64, :published_file_id, 1
        optional :fixed32, :rtime_time_stamp, 2, :default => 0
      end

      optional :int32, :eresult, 1, :default => 2
      repeated ::SteamCommunity::Internal::CMsgClientUCMEnumeratePublishedFilesByUserActionResponse::PublishedFileId, :published_files, 2
      optional :uint32, :total_results, 3
    end

    class CMsgClientUpdateUserGameInfo
      optional :fixed64, :steamid_idgs, 1
      optional :fixed64, :gameid, 2
      optional :uint32, :game_ip, 3
      optional :uint32, :game_port, 4
      optional :bytes, :token, 5
    end

    class CMsgClientRichPresenceUpload
      optional :bytes, :rich_presence_kv, 1
      repeated :fixed64, :steamid_broadcast, 2
    end

    class CMsgClientRichPresenceRequest
      repeated :fixed64, :steamid_request, 1
    end

    class CMsgClientRichPresenceInfo
      class RichPresence
        optional :fixed64, :steamid_user, 1
        optional :bytes, :rich_presence_kv, 2
      end

      repeated ::SteamCommunity::Internal::CMsgClientRichPresenceInfo::RichPresence, :rich_presence, 1
    end

    class CMsgClientCheckFileSignature
      optional :uint32, :app_id, 1
    end

    class CMsgClientCheckFileSignatureResponse
      optional :uint32, :app_id, 1
      optional :uint32, :pid, 2
      optional :uint32, :eresult, 3
      optional :string, :filename, 4
      optional :uint32, :esignatureresult, 5
      optional :bytes, :sha_file, 6
      optional :bytes, :signatureheader, 7
      optional :uint32, :filesize, 8
      optional :uint32, :getlasterror, 9
      optional :uint32, :evalvesignaturecheckdetail, 10
    end

    class CMsgClientReadMachineAuth
      optional :string, :filename, 1
      optional :uint32, :offset, 2
      optional :uint32, :cubtoread, 3
    end

    class CMsgClientReadMachineAuthResponse
      optional :string, :filename, 1
      optional :uint32, :eresult, 2
      optional :uint32, :filesize, 3
      optional :bytes, :sha_file, 4
      optional :uint32, :getlasterror, 5
      optional :uint32, :offset, 6
      optional :uint32, :cubread, 7
      optional :bytes, :bytes_read, 8
      optional :string, :filename_sentry, 9
    end

    class CMsgClientUpdateMachineAuth
      optional :string, :filename, 1
      optional :uint32, :offset, 2
      optional :uint32, :cubtowrite, 3
      optional :bytes, :bytes, 4
      optional :uint32, :otp_type, 5
      optional :string, :otp_identifier, 6
      optional :bytes, :otp_sharedsecret, 7
      optional :uint32, :otp_timedrift, 8
    end

    class CMsgClientUpdateMachineAuthResponse
      optional :string, :filename, 1
      optional :uint32, :eresult, 2
      optional :uint32, :filesize, 3
      optional :bytes, :sha_file, 4
      optional :uint32, :getlasterror, 5
      optional :uint32, :offset, 6
      optional :uint32, :cubwrote, 7
      optional :int32, :otp_type, 8
      optional :uint32, :otp_value, 9
      optional :string, :otp_identifier, 10
    end

    class CMsgClientRequestMachineAuth
      optional :string, :filename, 1
      optional :uint32, :eresult_sentryfile, 2
      optional :uint32, :filesize, 3
      optional :bytes, :sha_sentryfile, 4
      optional :int32, :lock_account_action, 6
      optional :uint32, :otp_type, 7
      optional :string, :otp_identifier, 8
      optional :bytes, :otp_sharedsecret, 9
      optional :uint32, :otp_value, 10
      optional :string, :machine_name, 11
      optional :string, :machine_name_userchosen, 12
    end

    class CMsgClientRequestMachineAuthResponse
      optional :uint32, :eresult, 1
    end

    class CMsgClientCreateFriendsGroup
      optional :fixed64, :steamid, 1
      optional :string, :groupname, 2
    end

    class CMsgClientCreateFriendsGroupResponse
      optional :uint32, :eresult, 1
      optional :int32, :groupid, 2
    end

    class CMsgClientDeleteFriendsGroup
      optional :fixed64, :steamid, 1
      optional :int32, :groupid, 2
    end

    class CMsgClientDeleteFriendsGroupResponse
      optional :uint32, :eresult, 1
    end

    class CMsgClientRenameFriendsGroup
      optional :int32, :groupid, 1
      optional :string, :groupname, 2
    end

    class CMsgClientRenameFriendsGroupResponse
      optional :uint32, :eresult, 1
    end

    class CMsgClientAddFriendToGroup
      optional :int32, :groupid, 1
      optional :fixed64, :steamiduser, 2
    end

    class CMsgClientAddFriendToGroupResponse
      optional :uint32, :eresult, 1
    end

    class CMsgClientRemoveFriendFromGroup
      optional :int32, :groupid, 1
      optional :fixed64, :steamiduser, 2
    end

    class CMsgClientRemoveFriendFromGroupResponse
      optional :uint32, :eresult, 1
    end

    class CMsgClientRegisterKey
      optional :string, :key, 1
    end

    class CMsgClientPurchaseResponse
      optional :int32, :eresult, 1, :default => 2
      optional :int32, :purchase_result_details, 2
      optional :bytes, :purchase_receipt_info, 3
    end

    class CMsgClientActivateOEMLicense
      optional :string, :bios_manufacturer, 1
      optional :string, :bios_serialnumber, 2
      optional :bytes, :license_file, 3
      optional :string, :mainboard_manufacturer, 4
      optional :string, :mainboard_product, 5
      optional :string, :mainboard_serialnumber, 6
    end

    class CMsgClientRegisterOEMMachine
      optional :bytes, :oem_register_file, 1
    end

    class CMsgClientRegisterOEMMachineResponse
      optional :uint32, :eresult, 1
    end

    class CMsgClientPurchaseWithMachineID
      optional :uint32, :package_id, 1
      optional :bytes, :machine_info, 2
    end

    class CMsgTrading_InitiateTradeRequest
      optional :uint32, :trade_request_id, 1
      optional :uint64, :other_steamid, 2
      optional :string, :other_name, 3
    end

    class CMsgTrading_InitiateTradeResponse
      optional :uint32, :response, 1
      optional :uint32, :trade_request_id, 2
      optional :uint64, :other_steamid, 3
      optional :uint32, :steamguard_required_days, 4
      optional :uint32, :new_device_cooldown_days, 5
      optional :uint32, :default_password_reset_probation_days, 6
      optional :uint32, :password_reset_probation_days, 7
      optional :uint32, :default_email_change_probation_days, 8
      optional :uint32, :email_change_probation_days, 9
    end

    class CMsgTrading_CancelTradeRequest
      optional :uint64, :other_steamid, 1
    end

    class CMsgTrading_StartSession
      optional :uint64, :other_steamid, 1
    end

    class CMsgClientEmailChange
      optional :string, :password, 1
      optional :string, :email, 2
      optional :string, :code, 3
      optional :bool, :final, 4
      optional :bool, :newmethod, 5
      optional :string, :twofactor_code, 6
      optional :string, :sms_code, 7
      optional :bool, :client_supports_sms, 8
    end

    class CMsgClientEmailChangeResponse
      optional :int32, :eresult, 1, :default => 2
      optional :bool, :requires_sms_code, 2
    end

    class CMsgClientGetCDNAuthToken
      optional :uint32, :depot_id, 1
      optional :string, :host_name, 2
      optional :uint32, :app_id, 3
    end

    class CMsgClientGetDepotDecryptionKey
      optional :uint32, :depot_id, 1
      optional :uint32, :app_id, 2
    end

    class CMsgClientGetDepotDecryptionKeyResponse
      optional :int32, :eresult, 1, :default => 2
      optional :uint32, :depot_id, 2
      optional :bytes, :depot_encryption_key, 3
    end

    class CMsgClientCheckAppBetaPassword
      optional :uint32, :app_id, 1
      optional :string, :betapassword, 2
    end

    class CMsgClientCheckAppBetaPasswordResponse
      class BetaPassword
        optional :string, :betaname, 1
        optional :string, :betapassword, 2
      end

      optional :int32, :eresult, 1, :default => 2
      repeated ::SteamCommunity::Internal::CMsgClientCheckAppBetaPasswordResponse::BetaPassword, :betapasswords, 4
    end

    class CMsgClientUpdateAppJobReport
      optional :uint32, :app_id, 1
      repeated :uint32, :depot_ids, 2
      optional :uint32, :app_state, 3
      optional :uint32, :job_app_error, 4
      optional :string, :error_details, 5
      optional :uint32, :job_duration, 6
      optional :uint32, :files_validation_failed, 7
      optional :uint64, :job_bytes_downloaded, 8
      optional :uint64, :job_bytes_staged, 9
      optional :uint64, :bytes_comitted, 10
      optional :uint32, :start_app_state, 11
      optional :fixed64, :stats_machine_id, 12
      optional :string, :branch_name, 13
      optional :uint64, :total_bytes_downloaded, 14
      optional :uint64, :total_bytes_staged, 15
    end

    class CMsgClientDPContentStatsReport
      optional :fixed64, :stats_machine_id, 1
      optional :string, :country_code, 2
      optional :int32, :os_type, 3
      optional :int32, :language, 4
      optional :uint32, :num_install_folders, 5
      optional :uint32, :num_installed_games, 6
      optional :uint64, :size_installed_games, 7
    end

    class CMsgClientGetCDNAuthTokenResponse
      optional :uint32, :eresult, 1, :default => 2
      optional :string, :token, 2
      optional :uint32, :expiration_time, 3
    end

    class CMsgDownloadRateStatistics
      class StatsInfo
        optional :uint32, :source_type, 1
        optional :uint32, :source_id, 2
        optional :uint32, :seconds, 3
        optional :uint64, :bytes, 4
      end

      optional :uint32, :cell_id, 1
      repeated ::SteamCommunity::Internal::CMsgDownloadRateStatistics::StatsInfo, :stats, 2
    end

    class CMsgClientRequestAccountData
      optional :string, :account_or_email, 1
      optional :uint32, :action, 2
    end

    class CMsgClientRequestAccountDataResponse
      optional :uint32, :action, 1
      optional :uint32, :eresult, 2
      optional :string, :account_name, 3
      optional :uint32, :ct_matches, 4
      optional :string, :account_name_suggestion1, 5
      optional :string, :account_name_suggestion2, 6
      optional :string, :account_name_suggestion3, 7
    end

    class CMsgClientUGSGetGlobalStats
      optional :uint64, :gameid, 1
      optional :uint32, :history_days_requested, 2
      optional :fixed32, :time_last_requested, 3
      optional :uint32, :first_day_cached, 4
      optional :uint32, :days_cached, 5
    end

    class CMsgClientUGSGetGlobalStatsResponse
      class Day
        class Stat
          optional :int32, :stat_id, 1
          optional :int64, :data, 2
        end

        optional :uint32, :day_id, 1
        repeated ::SteamCommunity::Internal::CMsgClientUGSGetGlobalStatsResponse::Day::Stat, :stats, 2
      end

      optional :int32, :eresult, 1, :default => 2
      optional :fixed32, :timestamp, 2
      optional :int32, :day_current, 3
      repeated ::SteamCommunity::Internal::CMsgClientUGSGetGlobalStatsResponse::Day, :days, 4
    end

    class CMsgGameServerData
      class Player
        optional :fixed64, :steam_id, 1
      end

      optional :fixed64, :steam_id_gs, 1
      optional :uint32, :ip, 2
      optional :uint32, :query_port, 3
      optional :uint32, :game_port, 4
      optional :uint32, :sourcetv_port, 5
      optional :string, :name, 22
      optional :uint32, :app_id, 6
      optional :string, :gamedir, 7
      optional :string, :version, 8
      optional :string, :product, 9
      optional :string, :region, 10
      repeated ::SteamCommunity::Internal::CMsgGameServerData::Player, :players, 11
      optional :uint32, :max_players, 12
      optional :uint32, :bot_count, 13
      optional :bool, :password, 14
      optional :bool, :secure, 15
      optional :bool, :dedicated, 16
      optional :string, :os, 17
      optional :string, :game_data, 18
      optional :uint32, :game_data_version, 19
      optional :string, :game_type, 20
      optional :string, :map, 21
    end

    class CMsgGameServerRemove
      optional :fixed64, :steam_id, 1
      optional :uint32, :ip, 2
      optional :uint32, :query_port, 3
    end

    class CMsgClientGMSServerQuery
      optional :uint32, :app_id, 1
      optional :uint32, :geo_location_ip, 2
      optional :uint32, :region_code, 3
      optional :string, :filter_text, 4
      optional :uint32, :max_servers, 5
    end

    class CMsgGMSClientServerQueryResponse
      class Server
        optional :uint32, :server_ip, 1
        optional :uint32, :server_port, 2
        optional :uint32, :auth_players, 3
      end

      repeated ::SteamCommunity::Internal::CMsgGMSClientServerQueryResponse::Server, :servers, 1
      optional :string, :error, 2
    end

    class CMsgGameServerOutOfDate
      optional :fixed64, :steam_id_gs, 1
      optional :bool, :reject, 2
      optional :string, :message, 3
    end

    class CMsgClientRedeemGuestPass
      optional :fixed64, :guest_pass_id, 1
    end

    class CMsgClientRedeemGuestPassResponse
      optional :uint32, :eresult, 1, :default => 2
      optional :uint32, :package_id, 2
      optional :uint32, :must_own_appid, 3
    end

    class CMsgClientGetClanActivityCounts
      repeated :uint64, :steamid_clans, 1
    end

    class CMsgClientGetClanActivityCountsResponse
      optional :uint32, :eresult, 1, :default => 2
    end

    class CMsgClientOGSReportString
      optional :bool, :accumulated, 1
      optional :uint64, :sessionid, 2
      optional :int32, :severity, 3
      optional :string, :formatter, 4
      optional :bytes, :varargs, 5
    end

    class CMsgClientOGSReportBug
      optional :uint64, :sessionid, 1
      optional :string, :bugtext, 2
      optional :bytes, :screenshot, 3
    end

    class CMsgGSAssociateWithClan
      optional :fixed64, :steam_id_clan, 1
    end

    class CMsgGSAssociateWithClanResponse
      optional :fixed64, :steam_id_clan, 1
      optional :uint32, :eresult, 2, :default => 2
    end

    class CMsgGSComputeNewPlayerCompatibility
      optional :fixed64, :steam_id_candidate, 1
    end

    class CMsgGSComputeNewPlayerCompatibilityResponse
      optional :fixed64, :steam_id_candidate, 1
      optional :uint32, :eresult, 2, :default => 2
      optional :bool, :is_clan_member, 3
      optional :int32, :ct_dont_like_you, 4
      optional :int32, :ct_you_dont_like, 5
      optional :int32, :ct_clanmembers_dont_like_you, 6
    end

    class CMsgGCClient
      optional :uint32, :appid, 1
      optional :uint32, :msgtype, 2
      optional :bytes, :payload, 3
      optional :fixed64, :steamid, 4
      optional :string, :gcname, 5
    end

    class CMsgClientRequestFreeLicense
      repeated :uint32, :appids, 2
    end

    class CMsgClientRequestFreeLicenseResponse
      optional :uint32, :eresult, 1, :default => 2
      repeated :uint32, :granted_packageids, 2
      repeated :uint32, :granted_appids, 3
    end

    class CMsgDRMDownloadRequestWithCrashData
      optional :uint32, :download_flags, 1
      optional :uint32, :download_types_known, 2
      optional :bytes, :guid_drm, 3
      optional :bytes, :guid_split, 4
      optional :bytes, :guid_merge, 5
      optional :string, :module_name, 6
      optional :string, :module_path, 7
      optional :bytes, :crash_data, 8
    end

    class CMsgDRMDownloadResponse
      optional :uint32, :eresult, 1, :default => 2
      optional :uint32, :app_id, 2
      optional :uint32, :blob_download_type, 3
      optional :bytes, :merge_guid, 4
      optional :uint32, :download_file_dfs_ip, 5
      optional :uint32, :download_file_dfs_port, 6
      optional :string, :download_file_url, 7
      optional :string, :module_path, 8
    end

    class CMsgDRMFinalResult
      optional :uint32, :eResult, 1, :default => 2
      optional :uint32, :app_id, 2
      optional :uint32, :blob_download_type, 3
      optional :uint32, :error_detail, 4
      optional :bytes, :merge_guid, 5
      optional :uint32, :download_file_dfs_ip, 6
      optional :uint32, :download_file_dfs_port, 7
      optional :string, :download_file_url, 8
    end

    class CMsgClientDPCheckSpecialSurvey
      optional :uint32, :survey_id, 1
    end

    class CMsgClientDPCheckSpecialSurveyResponse
      optional :uint32, :eResult, 1, :default => 2
      optional :uint32, :state, 2
      optional :string, :name, 3
      optional :string, :custom_url, 4
      optional :bool, :include_software, 5
      optional :bytes, :token, 6
    end

    class CMsgClientDPSendSpecialSurveyResponse
      optional :uint32, :survey_id, 1
      optional :bytes, :data, 2
    end

    class CMsgClientDPSendSpecialSurveyResponseReply
      optional :uint32, :eResult, 1, :default => 2
      optional :bytes, :token, 2
    end

    class CMsgClientRequestForgottenPasswordEmail
      optional :string, :account_name, 1
      optional :string, :password_tried, 2
    end

    class CMsgClientRequestForgottenPasswordEmailResponse
      optional :uint32, :eResult, 1
      optional :bool, :use_secret_question, 2
    end

    class CMsgClientItemAnnouncements
      optional :uint32, :count_new_items, 1
    end

    class CMsgClientUserNotifications
      class Notification
        optional :uint32, :user_notification_type, 1
        optional :uint32, :count, 2
      end

      repeated ::SteamCommunity::Internal::CMsgClientUserNotifications::Notification, :notifications, 1
    end

    class CMsgClientCommentNotifications
      optional :uint32, :count_new_comments, 1
      optional :uint32, :count_new_comments_owner, 2
      optional :uint32, :count_new_comments_subscriptions, 3
    end

    class CMsgClientOfflineMessageNotification
      optional :uint32, :offline_messages, 1
      repeated :uint32, :friends_with_offline_messages, 2
    end

    class CMsgClientFSGetFriendMessageHistory
      optional :fixed64, :steamid, 1
    end

    class CMsgClientFSGetFriendMessageHistoryResponse
      class FriendMessage
        optional :uint32, :accountid, 1
        optional :uint32, :timestamp, 2
        optional :string, :message, 3
        optional :bool, :unread, 4
      end

      optional :fixed64, :steamid, 1
      optional :uint32, :success, 2
      repeated ::SteamCommunity::Internal::CMsgClientFSGetFriendMessageHistoryResponse::FriendMessage, :messages, 3
    end

    class CMsgClientFSGetFriendsSteamLevels
      repeated :uint32, :accountids, 1
    end

    class CMsgClientFSGetFriendsSteamLevelsResponse
      class Friend
        optional :uint32, :accountid, 1
        optional :uint32, :level, 2
      end

      repeated ::SteamCommunity::Internal::CMsgClientFSGetFriendsSteamLevelsResponse::Friend, :friends, 1
    end

    class CMsgClientEmailAddrInfo
      optional :string, :email_address, 1
      optional :bool, :email_is_validated, 2
      optional :bool, :email_validation_changed, 3
      optional :bool, :credential_change_requires_code, 4
      optional :bool, :password_or_secretqa_change_requires_code, 5
      optional :bool, :remind_user_about_email, 6
    end

    class CMsgCREEnumeratePublishedFiles
      optional :uint32, :app_id, 1
      optional :int32, :query_type, 2
      optional :uint32, :start_index, 3
      optional :uint32, :days, 4
      optional :uint32, :count, 5
      repeated :string, :tags, 6
      repeated :string, :user_tags, 7
      optional :uint32, :matching_file_type, 8, :default => 13
    end

    class CMsgCREEnumeratePublishedFilesResponse
      class PublishedFileId
        optional :fixed64, :published_file_id, 1
        optional :int32, :votes_for, 2
        optional :int32, :votes_against, 3
        optional :int32, :reports, 4
        optional :float, :score, 5
      end

      optional :int32, :eresult, 1, :default => 2
      repeated ::SteamCommunity::Internal::CMsgCREEnumeratePublishedFilesResponse::PublishedFileId, :published_files, 2
      optional :uint32, :total_results, 3
    end

    class CMsgCREItemVoteSummary
      class PublishedFileId
        optional :fixed64, :published_file_id, 1
      end

      repeated ::SteamCommunity::Internal::CMsgCREItemVoteSummary::PublishedFileId, :published_file_ids, 1
    end

    class CMsgCREItemVoteSummaryResponse
      class ItemVoteSummary
        optional :fixed64, :published_file_id, 1
        optional :int32, :votes_for, 2
        optional :int32, :votes_against, 3
        optional :int32, :reports, 4
        optional :float, :score, 5
      end

      optional :int32, :eresult, 1, :default => 2
      repeated ::SteamCommunity::Internal::CMsgCREItemVoteSummaryResponse::ItemVoteSummary, :item_vote_summaries, 2
    end

    class CMsgCREUpdateUserPublishedItemVote
      optional :fixed64, :published_file_id, 1
      optional :bool, :vote_up, 2
    end

    class CMsgCREUpdateUserPublishedItemVoteResponse
      optional :int32, :eresult, 1, :default => 2
    end

    class CMsgCREGetUserPublishedItemVoteDetails
      class PublishedFileId
        optional :fixed64, :published_file_id, 1
      end

      repeated ::SteamCommunity::Internal::CMsgCREGetUserPublishedItemVoteDetails::PublishedFileId, :published_file_ids, 1
    end

    class CMsgCREGetUserPublishedItemVoteDetailsResponse
      class UserItemVoteDetail
        optional :fixed64, :published_file_id, 1
        optional :int32, :vote, 2, :default => 0
      end

      optional :int32, :eresult, 1, :default => 2
      repeated ::SteamCommunity::Internal::CMsgCREGetUserPublishedItemVoteDetailsResponse::UserItemVoteDetail, :user_item_vote_details, 2
    end

    class CMsgGameServerPingSample
      class Sample
        optional :fixed32, :ip, 1
        optional :uint32, :avg_ping_ms, 2
        optional :uint32, :stddev_ping_ms_x10, 3
      end

      optional :fixed32, :my_ip, 1
      optional :int32, :gs_app_id, 2
      repeated ::SteamCommunity::Internal::CMsgGameServerPingSample::Sample, :gs_samples, 3
    end

    class CMsgFSGetFollowerCount
      optional :fixed64, :steam_id, 1
    end

    class CMsgFSGetFollowerCountResponse
      optional :int32, :eresult, 1, :default => 2
      optional :int32, :count, 2, :default => 0
    end

    class CMsgFSGetIsFollowing
      optional :fixed64, :steam_id, 1
    end

    class CMsgFSGetIsFollowingResponse
      optional :int32, :eresult, 1, :default => 2
      optional :bool, :is_following, 2, :default => false
    end

    class CMsgFSEnumerateFollowingList
      optional :uint32, :start_index, 1
    end

    class CMsgFSEnumerateFollowingListResponse
      optional :int32, :eresult, 1, :default => 2
      optional :int32, :total_results, 2
      repeated :fixed64, :steam_ids, 3
    end

    class CMsgDPGetNumberOfCurrentPlayers
      optional :uint32, :appid, 1
    end

    class CMsgDPGetNumberOfCurrentPlayersResponse
      optional :int32, :eresult, 1, :default => 2
      optional :int32, :player_count, 2
    end

    class CMsgClientFriendUserStatusPublished
      optional :fixed64, :friend_steamid, 1
      optional :uint32, :appid, 2
      optional :string, :status_text, 3
    end

    class CMsgClientServiceMethod
      optional :string, :method_name, 1
      optional :bytes, :serialized_method, 2
      optional :bool, :is_notification, 3
    end

    class CMsgClientServiceMethodResponse
      optional :string, :method_name, 1
      optional :bytes, :serialized_method_response, 2
    end

    class CMsgClientUIMode
      optional :uint32, :uimode, 1
    end

    class CMsgClientVanityURLChangedNotification
      optional :string, :vanity_url, 1
    end

    class CMsgClientAuthorizeLocalDeviceRequest
      optional :string, :device_description, 1
      optional :uint32, :owner_account_id, 2
    end

    class CMsgClientAuthorizeLocalDevice
      optional :int32, :eresult, 1, :default => 2
      optional :uint32, :owner_account_id, 2
      optional :uint64, :authed_device_token, 3
    end

    class CMsgClientDeauthorizeDeviceRequest
      optional :uint32, :deauthorization_account_id, 1
      optional :uint64, :deauthorization_device_token, 2
    end

    class CMsgClientDeauthorizeDevice
      optional :int32, :eresult, 1, :default => 2
      optional :uint32, :deauthorization_account_id, 2
    end

    class CMsgClientUseLocalDeviceAuthorizations
      class DeviceToken
        optional :uint32, :owner_account_id, 1
        optional :uint64, :token_id, 2
      end

      repeated :uint32, :authorization_account_id, 1
      repeated ::SteamCommunity::Internal::CMsgClientUseLocalDeviceAuthorizations::DeviceToken, :device_tokens, 2
    end

    class CMsgClientGetAuthorizedDevicesResponse
      class AuthorizedDevice
        optional :uint64, :auth_device_token, 1
        optional :string, :device_name, 2
        optional :uint32, :last_access_time, 3
        optional :uint32, :borrower_id, 4
        optional :bool, :is_pending, 5
        optional :uint32, :app_played, 6
      end

      optional :int32, :eresult, 1, :default => 2
      repeated ::SteamCommunity::Internal::CMsgClientGetAuthorizedDevicesResponse::AuthorizedDevice, :authorized_device, 2
    end

    class CMsgClientEmoticonList
      class Emoticon
        optional :string, :name, 1
        optional :int32, :count, 2
      end

      repeated ::SteamCommunity::Internal::CMsgClientEmoticonList::Emoticon, :emoticons, 1
    end

    class CMsgClientSharedLibraryLockStatus
      class LockedLibrary
        optional :uint32, :owner_id, 1
        optional :uint32, :locked_by, 2
      end

      repeated ::SteamCommunity::Internal::CMsgClientSharedLibraryLockStatus::LockedLibrary, :locked_library, 1
      optional :uint32, :own_library_locked_by, 2
    end

    class CMsgClientSharedLibraryStopPlaying
      class StopApp
        optional :uint32, :app_id, 1
        optional :uint32, :owner_id, 2
      end

      optional :int32, :seconds_left, 1
      repeated ::SteamCommunity::Internal::CMsgClientSharedLibraryStopPlaying::StopApp, :stop_apps, 2
    end

    class CMsgClientServiceCall
      optional :bytes, :sysid_routing, 1
      optional :uint32, :call_handle, 2
      optional :uint32, :module_crc, 3
      optional :bytes, :module_hash, 4
      optional :uint32, :function_id, 5
      optional :uint32, :cub_output_max, 6
      optional :uint32, :flags, 7
      optional :bytes, :callparameter, 8
      optional :bool, :ping_only, 9
      optional :uint32, :max_outstanding_calls, 10
    end

    class CMsgClientServiceModule
      optional :uint32, :module_crc, 1
      optional :bytes, :module_hash, 2
      optional :bytes, :module_content, 3
    end

    class CMsgClientServiceCallResponse
      optional :bytes, :sysid_routing, 1
      optional :uint32, :call_handle, 2
      optional :uint32, :module_crc, 3
      optional :bytes, :module_hash, 4
      optional :uint32, :ecallresult, 5
      optional :bytes, :result_content, 6
      optional :bytes, :os_version_info, 7
      optional :bytes, :system_info, 8
      optional :fixed64, :load_address, 9
      optional :bytes, :exception_record, 10
      optional :bytes, :portable_os_version_info, 11
      optional :bytes, :portable_system_info, 12
      optional :bool, :was_converted, 13
      optional :uint32, :internal_result, 14
      optional :uint32, :current_count, 15
      optional :uint32, :last_call_handle, 16
      optional :uint32, :last_call_module_crc, 17
      optional :bytes, :last_call_sysid_routing, 18
      optional :uint32, :last_ecallresult, 19
      optional :uint32, :last_callissue_delta, 20
      optional :uint32, :last_callcomplete_delta, 21
    end

    class CMsgAMUnlockStreamingResponse
      optional :int32, :eresult, 1, :default => 2
      optional :bytes, :encryption_key, 2
    end

    class CMsgClientPlayingSessionState
      optional :bool, :playing_blocked, 2
      optional :uint32, :playing_app, 3
    end

    class CMsgClientKickPlayingSession
      optional :bool, :only_stop_game, 1
    end

    class CMsgClientCreateAccount
      optional :string, :account_name, 1
      optional :string, :password, 2
      optional :string, :email, 3
      optional :uint32, :launcher, 6
    end

    class CMsgClientCreateAccountResponse
      optional :int32, :eresult, 1, :default => 2
      optional :fixed64, :steamid, 2
    end

    class CMsgClientVoiceCallPreAuthorize
      optional :fixed64, :caller_steamid, 1
      optional :fixed64, :receiver_steamid, 2
      optional :int32, :caller_id, 3
      optional :bool, :hangup, 4
    end

    class CMsgClientVoiceCallPreAuthorizeResponse
      optional :fixed64, :caller_steamid, 1
      optional :fixed64, :receiver_steamid, 2
      optional :int32, :eresult, 3, :default => 2
      optional :int32, :caller_id, 4
    end

  end

end

