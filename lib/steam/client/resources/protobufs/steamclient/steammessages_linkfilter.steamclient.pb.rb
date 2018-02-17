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
    class CCommunity_GetLinkFilterHashPrefixes_Request < ::Protobuf::Message; end
    class CCommunity_GetLinkFilterHashPrefixes_Response < ::Protobuf::Message; end
    class CCommunity_GetLinkFilterHashes_Request < ::Protobuf::Message; end
    class CCommunity_GetLinkFilterHashes_Response < ::Protobuf::Message; end
    class CCommunity_GetLinkFilterListVersion_Request < ::Protobuf::Message; end
    class CCommunity_GetLinkFilterListVersion_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CCommunity_GetLinkFilterHashPrefixes_Request
      optional :uint32, :hit_type, 1
      optional :uint32, :count, 2
      optional :uint64, :start, 3
    end

    class CCommunity_GetLinkFilterHashPrefixes_Response
      repeated :uint32, :hash_prefixes, 1
    end

    class CCommunity_GetLinkFilterHashes_Request
      optional :uint32, :hit_type, 1
      optional :uint32, :count, 2
      optional :uint64, :start, 3
    end

    class CCommunity_GetLinkFilterHashes_Response
      repeated :bytes, :hashes, 1
    end

    class CCommunity_GetLinkFilterListVersion_Request
      optional :uint32, :hit_type, 1
    end

    class CCommunity_GetLinkFilterListVersion_Response
      optional :string, :version, 1
      optional :uint64, :count, 2
    end


    ##
    # Service Classes
    #
    class CommunityLinkFilter < ::Protobuf::Rpc::Service
      rpc :get_link_filter_hash_prefixes, ::SteamCommunity::Internal::CCommunity_GetLinkFilterHashPrefixes_Request, ::SteamCommunity::Internal::CCommunity_GetLinkFilterHashPrefixes_Response
      rpc :get_link_filter_hashes, ::SteamCommunity::Internal::CCommunity_GetLinkFilterHashes_Request, ::SteamCommunity::Internal::CCommunity_GetLinkFilterHashes_Response
      rpc :get_link_filter_list_version, ::SteamCommunity::Internal::CCommunity_GetLinkFilterListVersion_Request, ::SteamCommunity::Internal::CCommunity_GetLinkFilterListVersion_Response
    end

  end

end

