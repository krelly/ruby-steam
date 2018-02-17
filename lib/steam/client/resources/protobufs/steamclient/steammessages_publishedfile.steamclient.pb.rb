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
    class CPublishedFile_Subscribe_Request < ::Protobuf::Message; end
    class CPublishedFile_Subscribe_Response < ::Protobuf::Message; end
    class CPublishedFile_Unsubscribe_Request < ::Protobuf::Message; end
    class CPublishedFile_Unsubscribe_Response < ::Protobuf::Message; end
    class CPublishedFile_CanSubscribe_Request < ::Protobuf::Message; end
    class CPublishedFile_CanSubscribe_Response < ::Protobuf::Message; end
    class CPublishedFile_Publish_Request < ::Protobuf::Message; end
    class CPublishedFile_Publish_Response < ::Protobuf::Message; end
    class CPublishedFile_GetDetails_Request < ::Protobuf::Message; end
    class PublishedFileDetails < ::Protobuf::Message
      class EPublishedFileForSaleStatus < ::Protobuf::Enum
        define :K_Pffss_Notforsale, 0
        define :K_Pffss_Pendingapproval, 1
        define :K_Pffss_Approvedforsale, 2
        define :K_Pffss_Rejectedforsale, 3
        define :K_Pffss_Nolongerforsale, 4
        define :K_Pffss_Tentativeapproval, 5
      end

      class Tag < ::Protobuf::Message; end
      class Preview < ::Protobuf::Message; end
      class Child < ::Protobuf::Message; end
      class KVTag < ::Protobuf::Message; end
      class VoteData < ::Protobuf::Message; end
      class ForSaleData < ::Protobuf::Message; end

    end

    class CPublishedFile_GetDetails_Response < ::Protobuf::Message; end
    class CPublishedFile_GetItemInfo_Request < ::Protobuf::Message
      class WorkshopItem < ::Protobuf::Message; end

    end

    class CPublishedFile_GetItemInfo_Response < ::Protobuf::Message
      class WorkshopItemInfo < ::Protobuf::Message; end

    end

    class CPublishedFile_GetUserFiles_Request < ::Protobuf::Message
      class KVTag < ::Protobuf::Message; end

    end

    class CPublishedFile_GetUserFiles_Response < ::Protobuf::Message
      class App < ::Protobuf::Message; end

    end

    class CPublishedFile_Update_Request < ::Protobuf::Message; end
    class CPublishedFile_Update_Response < ::Protobuf::Message; end
    class CPublishedFile_GetChangeHistoryEntry_Request < ::Protobuf::Message; end
    class CPublishedFile_GetChangeHistoryEntry_Response < ::Protobuf::Message; end
    class CPublishedFile_GetChangeHistory_Request < ::Protobuf::Message; end
    class CPublishedFile_GetChangeHistory_Response < ::Protobuf::Message
      class ChangeLog < ::Protobuf::Message; end

    end

    class CPublishedFile_RefreshVotingQueue_Request < ::Protobuf::Message; end
    class CPublishedFile_RefreshVotingQueue_Response < ::Protobuf::Message; end
    class CPublishedFile_QueryFiles_Request < ::Protobuf::Message
      class KVTag < ::Protobuf::Message; end

    end

    class CPublishedFile_QueryFiles_Response < ::Protobuf::Message; end
    class CPublishedFile_StartPlaytimeTracking_Request < ::Protobuf::Message; end
    class CPublishedFile_StartPlaytimeTracking_Response < ::Protobuf::Message; end
    class CPublishedFile_StopPlaytimeTracking_Request < ::Protobuf::Message; end
    class CPublishedFile_StopPlaytimeTracking_Response < ::Protobuf::Message; end
    class CPublishedFile_StopPlaytimeTrackingForAllAppItems_Request < ::Protobuf::Message; end
    class CPublishedFile_StopPlaytimeTrackingForAllAppItems_Response < ::Protobuf::Message; end
    class CPublishedFile_SetPlaytimeForControllerConfigs_Request < ::Protobuf::Message
      class ControllerConfigUsage < ::Protobuf::Message; end

    end

    class CPublishedFile_SetPlaytimeForControllerConfigs_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CPublishedFile_Subscribe_Request
      optional :uint64, :publishedfileid, 1
      optional :uint32, :list_type, 2
      optional :int32, :appid, 3
      optional :bool, :notify_client, 4
    end

    class CPublishedFile_Unsubscribe_Request
      optional :uint64, :publishedfileid, 1
      optional :uint32, :list_type, 2
      optional :int32, :appid, 3
      optional :bool, :notify_client, 4
    end

    class CPublishedFile_CanSubscribe_Request
      optional :uint64, :publishedfileid, 1
    end

    class CPublishedFile_CanSubscribe_Response
      optional :bool, :can_subscribe, 1
    end

    class CPublishedFile_Publish_Request
      optional :uint32, :appid, 1
      optional :uint32, :consumer_appid, 2
      optional :string, :cloudfilename, 3
      optional :string, :preview_cloudfilename, 4
      optional :string, :title, 5
      optional :string, :file_description, 6
      optional :uint32, :file_type, 7
      optional :string, :consumer_shortcut_name, 8
      optional :string, :youtube_username, 9
      optional :string, :youtube_videoid, 10
      optional :uint32, :visibility, 11
      optional :string, :redirect_uri, 12
      repeated :string, :tags, 13
      optional :string, :collection_type, 14
      optional :string, :game_type, 15
      optional :string, :url, 16
    end

    class CPublishedFile_Publish_Response
      optional :uint64, :publishedfileid, 1
      optional :string, :redirect_uri, 2
    end

    class CPublishedFile_GetDetails_Request
      repeated :fixed64, :publishedfileids, 1
      optional :bool, :includetags, 2
      optional :bool, :includeadditionalpreviews, 3
      optional :bool, :includechildren, 4
      optional :bool, :includekvtags, 5
      optional :bool, :includevotes, 6
      optional :bool, :short_description, 8
      optional :bool, :includeforsaledata, 10
      optional :bool, :includemetadata, 11
      optional :int32, :language, 12, :default => 0
    end

    class PublishedFileDetails
      class Tag
        optional :string, :tag, 1
        optional :bool, :adminonly, 2
      end

      class Preview
        optional :uint64, :previewid, 1
        optional :uint32, :sortorder, 2
        optional :string, :url, 3
        optional :uint32, :size, 4
        optional :string, :filename, 5
        optional :string, :youtubevideoid, 6
        optional :uint32, :preview_type, 7
        optional :string, :external_reference, 8
      end

      class Child
        optional :uint64, :publishedfileid, 1
        optional :uint32, :sortorder, 2
        optional :uint32, :file_type, 3
      end

      class KVTag
        optional :string, :key, 1
        optional :string, :value, 2
      end

      class VoteData
        optional :float, :score, 1
        optional :uint32, :votes_up, 2
        optional :uint32, :votes_down, 3
      end

      class ForSaleData
        optional :bool, :is_for_sale, 1
        optional :uint32, :price_category, 2
        optional ::SteamCommunity::Internal::PublishedFileDetails::EPublishedFileForSaleStatus, :estatus, 3, :default => ::SteamCommunity::Internal::PublishedFileDetails::EPublishedFileForSaleStatus::K_Pffss_Notforsale
        optional :uint32, :price_category_floor, 4
        optional :bool, :price_is_pay_what_you_want, 5
        optional :uint32, :discount_percentage, 6
      end

      optional :uint32, :result, 1
      optional :uint64, :publishedfileid, 2
      optional :fixed64, :creator, 3
      optional :uint32, :creator_appid, 4
      optional :uint32, :consumer_appid, 5
      optional :uint32, :consumer_shortcutid, 6
      optional :string, :filename, 7
      optional :uint64, :file_size, 8
      optional :uint64, :preview_file_size, 9
      optional :string, :file_url, 10
      optional :string, :preview_url, 11
      optional :string, :youtubevideoid, 12
      optional :string, :url, 13
      optional :fixed64, :hcontent_file, 14
      optional :fixed64, :hcontent_preview, 15
      optional :string, :title, 16
      optional :string, :file_description, 17
      optional :string, :short_description, 18
      optional :uint32, :time_created, 19
      optional :uint32, :time_updated, 20
      optional :uint32, :visibility, 21
      optional :uint32, :flags, 22
      optional :bool, :workshop_file, 23
      optional :bool, :workshop_accepted, 24
      optional :bool, :show_subscribe_all, 25
      optional :int32, :num_comments_developer, 26
      optional :int32, :num_comments_public, 27
      optional :bool, :banned, 28
      optional :string, :ban_reason, 29
      optional :fixed64, :banner, 30
      optional :bool, :can_be_deleted, 31
      optional :bool, :incompatible, 32
      optional :string, :app_name, 33
      optional :uint32, :file_type, 34
      optional :bool, :can_subscribe, 35
      optional :uint32, :subscriptions, 36
      optional :uint32, :favorited, 37
      optional :uint32, :followers, 38
      optional :uint32, :lifetime_subscriptions, 39
      optional :uint32, :lifetime_favorited, 40
      optional :uint32, :lifetime_followers, 41
      optional :uint64, :lifetime_playtime, 62
      optional :uint64, :lifetime_playtime_sessions, 63
      optional :uint32, :views, 42
      optional :uint32, :image_width, 43
      optional :uint32, :image_height, 44
      optional :string, :image_url, 45
      optional :bool, :spoiler_tag, 46
      optional :uint32, :shortcutid, 47
      optional :string, :shortcutname, 48
      optional :uint32, :num_children, 49
      optional :uint32, :num_reports, 50
      repeated ::SteamCommunity::Internal::PublishedFileDetails::Preview, :previews, 51
      repeated ::SteamCommunity::Internal::PublishedFileDetails::Tag, :tags, 52
      repeated ::SteamCommunity::Internal::PublishedFileDetails::Child, :children, 53
      repeated ::SteamCommunity::Internal::PublishedFileDetails::KVTag, :kvtags, 54
      optional ::SteamCommunity::Internal::PublishedFileDetails::VoteData, :vote_data, 55
      optional :uint32, :time_subscribed, 56
      optional ::SteamCommunity::Internal::PublishedFileDetails::ForSaleData, :for_sale_data, 57
      optional :string, :metadata, 58
      optional :fixed64, :incompatible_actor, 59
      optional :uint32, :incompatible_timestamp, 60
      optional :int32, :language, 61, :default => 0
    end

    class CPublishedFile_GetDetails_Response
      repeated ::SteamCommunity::Internal::PublishedFileDetails, :publishedfiledetails, 1
    end

    class CPublishedFile_GetItemInfo_Request
      class WorkshopItem
        optional :fixed64, :published_file_id, 1
        optional :uint32, :time_updated, 2
      end

      optional :uint32, :app_id, 1
      optional :uint32, :last_time_updated, 2
      repeated ::SteamCommunity::Internal::CPublishedFile_GetItemInfo_Request::WorkshopItem, :workshop_items, 3
    end

    class CPublishedFile_GetItemInfo_Response
      class WorkshopItemInfo
        optional :fixed64, :published_file_id, 1
        optional :uint32, :time_updated, 2
        optional :fixed64, :manifest_id, 3
        optional :uint32, :flags, 4
      end

      optional :uint32, :update_time, 1
      repeated ::SteamCommunity::Internal::CPublishedFile_GetItemInfo_Response::WorkshopItemInfo, :workshop_items, 2
    end

    class CPublishedFile_GetUserFiles_Request
      class KVTag
        optional :string, :key, 1
        optional :string, :value, 2
      end

      optional :fixed64, :steamid, 1
      optional :uint32, :appid, 2
      optional :uint32, :page, 4, :default => 1
      optional :uint32, :numperpage, 5, :default => 1
      optional :string, :type, 6, :default => "myfiles"
      optional :string, :sortmethod, 7, :default => "lastupdated"
      optional :uint32, :privacy, 9
      repeated :string, :requiredtags, 10
      repeated :string, :excludedtags, 11
      repeated ::SteamCommunity::Internal::CPublishedFile_GetUserFiles_Request::KVTag, :required_kv_tags, 30
      optional :uint32, :filetype, 14
      optional :uint32, :creator_appid, 15
      optional :string, :match_cloud_filename, 16
      optional :uint32, :cache_max_age_seconds, 27, :default => 0
      optional :int32, :language, 29, :default => 0
      optional :bool, :totalonly, 17
      optional :bool, :ids_only, 18
      optional :bool, :return_vote_data, 19, :default => true
      optional :bool, :return_tags, 20
      optional :bool, :return_kv_tags, 21, :default => true
      optional :bool, :return_previews, 22
      optional :bool, :return_children, 23
      optional :bool, :return_short_description, 24, :default => true
      optional :bool, :return_for_sale_data, 26
      optional :bool, :return_metadata, 28, :default => false
    end

    class CPublishedFile_GetUserFiles_Response
      class App
        optional :uint32, :appid, 1
        optional :string, :name, 2
        optional :uint32, :shortcutid, 3
        optional :bool, :private, 4
      end

      optional :uint32, :total, 1
      optional :uint32, :startindex, 2
      repeated ::SteamCommunity::Internal::PublishedFileDetails, :publishedfiledetails, 3
      repeated ::SteamCommunity::Internal::CPublishedFile_GetUserFiles_Response::App, :apps, 4
    end

    class CPublishedFile_Update_Request
      optional :uint32, :appid, 1
      optional :fixed64, :publishedfileid, 2
      optional :string, :title, 3
      optional :string, :file_description, 4
      optional :uint32, :visibility, 5
      repeated :string, :tags, 6
      optional :string, :filename, 7
      optional :string, :preview_filename, 8
      optional :uint32, :image_width, 15
      optional :uint32, :image_height, 16
    end

    class CPublishedFile_GetChangeHistoryEntry_Request
      optional :fixed64, :publishedfileid, 1
      optional :uint32, :timestamp, 2
      optional :int32, :language, 3
    end

    class CPublishedFile_GetChangeHistoryEntry_Response
      optional :string, :change_description, 1
      optional :int32, :language, 2
    end

    class CPublishedFile_GetChangeHistory_Request
      optional :fixed64, :publishedfileid, 1
      optional :bool, :total_only, 2
      optional :uint32, :startindex, 3
      optional :uint32, :count, 4
      optional :int32, :language, 5, :default => 0
    end

    class CPublishedFile_GetChangeHistory_Response
      class ChangeLog
        optional :uint32, :timestamp, 1
        optional :string, :change_description, 2
        optional :int32, :language, 3
      end

      repeated ::SteamCommunity::Internal::CPublishedFile_GetChangeHistory_Response::ChangeLog, :changes, 1
      optional :uint32, :total, 2
    end

    class CPublishedFile_RefreshVotingQueue_Request
      optional :uint32, :appid, 1
      optional :uint32, :matching_file_type, 2
      repeated :string, :tags, 3
      optional :bool, :match_all_tags, 4, :default => true
      repeated :string, :excluded_tags, 5
      optional :uint32, :desired_queue_size, 6
    end

    class CPublishedFile_QueryFiles_Request
      class KVTag
        optional :string, :key, 1
        optional :string, :value, 2
      end

      optional :uint32, :query_type, 1
      optional :uint32, :page, 2
      optional :uint32, :numperpage, 3, :default => 1
      optional :uint32, :creator_appid, 4
      optional :uint32, :appid, 5
      repeated :string, :requiredtags, 6
      repeated :string, :excludedtags, 7
      optional :bool, :match_all_tags, 8, :default => true
      repeated :string, :required_flags, 9
      repeated :string, :omitted_flags, 10
      optional :string, :search_text, 11
      optional :uint32, :filetype, 12
      optional :fixed64, :child_publishedfileid, 13
      optional :uint32, :days, 14
      optional :bool, :include_recent_votes_only, 15
      optional :uint32, :cache_max_age_seconds, 31, :default => 0
      optional :int32, :language, 33, :default => 0
      repeated ::SteamCommunity::Internal::CPublishedFile_QueryFiles_Request::KVTag, :required_kv_tags, 34
      optional :bool, :totalonly, 16
      optional :bool, :ids_only, 35
      optional :bool, :return_vote_data, 17
      optional :bool, :return_tags, 18
      optional :bool, :return_kv_tags, 19
      optional :bool, :return_previews, 20
      optional :bool, :return_children, 21
      optional :bool, :return_short_description, 22
      optional :bool, :return_for_sale_data, 30
      optional :bool, :return_metadata, 32, :default => false
    end

    class CPublishedFile_QueryFiles_Response
      optional :uint32, :total, 1
      repeated ::SteamCommunity::Internal::PublishedFileDetails, :publishedfiledetails, 2
    end

    class CPublishedFile_StartPlaytimeTracking_Request
      optional :uint32, :appid, 1
      repeated :uint64, :publishedfileids, 2
    end

    class CPublishedFile_StopPlaytimeTracking_Request
      optional :uint32, :appid, 1
      repeated :uint64, :publishedfileids, 2
    end

    class CPublishedFile_StopPlaytimeTrackingForAllAppItems_Request
      optional :uint32, :appid, 1
    end

    class CPublishedFile_SetPlaytimeForControllerConfigs_Request
      class ControllerConfigUsage
        optional :uint64, :publishedfileid, 1
        optional :float, :seconds_active, 2
      end

      optional :uint32, :appid, 1
      repeated ::SteamCommunity::Internal::CPublishedFile_SetPlaytimeForControllerConfigs_Request::ControllerConfigUsage, :controller_config_usage, 2
    end


    ##
    # Service Classes
    #
    class PublishedFile < ::Protobuf::Rpc::Service
      rpc :subscribe, ::SteamCommunity::Internal::CPublishedFile_Subscribe_Request, ::SteamCommunity::Internal::CPublishedFile_Subscribe_Response
      rpc :unsubscribe, ::SteamCommunity::Internal::CPublishedFile_Unsubscribe_Request, ::SteamCommunity::Internal::CPublishedFile_Unsubscribe_Response
      rpc :can_subscribe, ::SteamCommunity::Internal::CPublishedFile_CanSubscribe_Request, ::SteamCommunity::Internal::CPublishedFile_CanSubscribe_Response
      rpc :publish, ::SteamCommunity::Internal::CPublishedFile_Publish_Request, ::SteamCommunity::Internal::CPublishedFile_Publish_Response
      rpc :get_details, ::SteamCommunity::Internal::CPublishedFile_GetDetails_Request, ::SteamCommunity::Internal::CPublishedFile_GetDetails_Response
      rpc :get_item_info, ::SteamCommunity::Internal::CPublishedFile_GetItemInfo_Request, ::SteamCommunity::Internal::CPublishedFile_GetItemInfo_Response
      rpc :get_user_files, ::SteamCommunity::Internal::CPublishedFile_GetUserFiles_Request, ::SteamCommunity::Internal::CPublishedFile_GetUserFiles_Response
      rpc :update, ::SteamCommunity::Internal::CPublishedFile_Update_Request, ::SteamCommunity::Internal::CPublishedFile_Update_Response
      rpc :get_change_history_entry, ::SteamCommunity::Internal::CPublishedFile_GetChangeHistoryEntry_Request, ::SteamCommunity::Internal::CPublishedFile_GetChangeHistoryEntry_Response
      rpc :get_change_history, ::SteamCommunity::Internal::CPublishedFile_GetChangeHistory_Request, ::SteamCommunity::Internal::CPublishedFile_GetChangeHistory_Response
      rpc :refresh_voting_queue, ::SteamCommunity::Internal::CPublishedFile_RefreshVotingQueue_Request, ::SteamCommunity::Internal::CPublishedFile_RefreshVotingQueue_Response
      rpc :query_files, ::SteamCommunity::Internal::CPublishedFile_QueryFiles_Request, ::SteamCommunity::Internal::CPublishedFile_QueryFiles_Response
      rpc :start_playtime_tracking, ::SteamCommunity::Internal::CPublishedFile_StartPlaytimeTracking_Request, ::SteamCommunity::Internal::CPublishedFile_StartPlaytimeTracking_Response
      rpc :stop_playtime_tracking, ::SteamCommunity::Internal::CPublishedFile_StopPlaytimeTracking_Request, ::SteamCommunity::Internal::CPublishedFile_StopPlaytimeTracking_Response
      rpc :stop_playtime_tracking_for_all_app_items, ::SteamCommunity::Internal::CPublishedFile_StopPlaytimeTrackingForAllAppItems_Request, ::SteamCommunity::Internal::CPublishedFile_StopPlaytimeTrackingForAllAppItems_Response
      rpc :set_playtime_for_controller_configs, ::SteamCommunity::Internal::CPublishedFile_SetPlaytimeForControllerConfigs_Request, ::SteamCommunity::Internal::CPublishedFile_SetPlaytimeForControllerConfigs_Response
    end

  end

end

