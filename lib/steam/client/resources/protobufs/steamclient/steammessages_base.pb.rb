# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require_relative 'google/protobuf/descriptor.pb'

module SteamCommunity
  module Internal

    ##
    # Message Classes
    #
    class CMsgProtoBufHeader < ::Protobuf::Message; end
    class CMsgMulti < ::Protobuf::Message; end
    class CMsgProtobufWrapped < ::Protobuf::Message; end
    class CMsgAuthTicket < ::Protobuf::Message; end
    class CCDDBAppDetailCommon < ::Protobuf::Message; end
    class CMsgAppRights < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CMsgProtoBufHeader
      optional :fixed64, :steamid, 1
      optional :int32, :client_sessionid, 2
      optional :uint32, :routing_appid, 3
      optional :fixed64, :jobid_source, 10, :default => 18446744073709551615
      optional :fixed64, :jobid_target, 11, :default => 18446744073709551615
      optional :string, :target_job_name, 12
      optional :int32, :seq_num, 24
      optional :int32, :eresult, 13, :default => 2
      optional :string, :error_message, 14
      optional :uint32, :ip, 15
      optional :uint32, :auth_account_flags, 16
      optional :uint32, :token_source, 22
      optional :bool, :admin_spoofing_user, 23
      optional :int32, :transport_error, 17, :default => 1
      optional :uint64, :messageid, 18, :default => 18446744073709551615
      optional :uint32, :publisher_group_id, 19
      optional :uint32, :sysid, 20
      optional :uint64, :trace_tag, 21
      optional :uint32, :webapi_key_id, 25
      optional :bool, :is_from_external_source, 26
    end

    class CMsgMulti
      optional :uint32, :size_unzipped, 1
      optional :bytes, :message_body, 2
    end

    class CMsgProtobufWrapped
      optional :bytes, :message_body, 1
    end

    class CMsgAuthTicket
      optional :uint32, :estate, 1
      optional :uint32, :eresult, 2, :default => 2
      optional :fixed64, :steamid, 3
      optional :fixed64, :gameid, 4
      optional :uint32, :h_steam_pipe, 5
      optional :uint32, :ticket_crc, 6
      optional :bytes, :ticket, 7
    end

    class CCDDBAppDetailCommon
      optional :uint32, :appid, 1
      optional :string, :name, 2
      optional :string, :icon, 3
      optional :string, :logo, 4
      optional :string, :logo_small, 5
      optional :bool, :tool, 6
      optional :bool, :demo, 7
      optional :bool, :media, 8
      optional :bool, :community_visible_stats, 9
      optional :string, :friendly_name, 10
      optional :string, :propagation, 11
      optional :bool, :has_adult_content, 12
    end

    class CMsgAppRights
      optional :bool, :edit_info, 1
      optional :bool, :publish, 2
      optional :bool, :view_error_data, 3
      optional :bool, :download, 4
      optional :bool, :upload_cdkeys, 5
      optional :bool, :generate_cdkeys, 6
      optional :bool, :view_financials, 7
      optional :bool, :manage_ceg, 8
      optional :bool, :manage_signing, 9
      optional :bool, :manage_cdkeys, 10
      optional :bool, :edit_marketing, 11
      optional :bool, :economy_support, 12
      optional :bool, :economy_support_supervisor, 13
      optional :bool, :manage_pricing, 14
      optional :bool, :broadcast_live, 15
    end


    ##
    # Extended Message Fields
    #
    class Google::Protobuf::MessageOptions < ::Protobuf::Message
      optional :int32, :msgpool_soft_limit, 50000, :default => 32, :extension => true
      optional :int32, :msgpool_hard_limit, 50001, :default => 384, :extension => true
    end

    class Google::Protobuf::FileOptions < ::Protobuf::Message
      optional :bool, :force_php_generation, 50000, :default => false, :extension => true
    end

  end

end
