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
    class COffline_GetOfflineLogonTicket_Request < ::Protobuf::Message; end
    class COffline_GetOfflineLogonTicket_Response < ::Protobuf::Message; end
    class COffline_GetUnsignedOfflineLogonTicket_Request < ::Protobuf::Message; end
    class COffline_OfflineLogonTicket < ::Protobuf::Message; end
    class COffline_GetUnsignedOfflineLogonTicket_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class COffline_GetOfflineLogonTicket_Request
      optional :uint32, :priority, 1
    end

    class COffline_GetOfflineLogonTicket_Response
      optional :bytes, :serialized_ticket, 1
      optional :bytes, :signature, 2
    end

    class COffline_OfflineLogonTicket
      optional :uint32, :accountid, 1
      optional :fixed32, :rtime32_creation_time, 2
    end

    class COffline_GetUnsignedOfflineLogonTicket_Response
      optional ::SteamCommunity::Internal::COffline_OfflineLogonTicket, :ticket, 1
    end


    ##
    # Service Classes
    #
    class Offline < ::Protobuf::Rpc::Service
      rpc :get_offline_logon_ticket, ::SteamCommunity::Internal::COffline_GetOfflineLogonTicket_Request, ::SteamCommunity::Internal::COffline_GetOfflineLogonTicket_Response
      rpc :get_unsigned_offline_logon_ticket, ::SteamCommunity::Internal::COffline_GetUnsignedOfflineLogonTicket_Request, ::SteamCommunity::Internal::COffline_GetUnsignedOfflineLogonTicket_Response
    end

  end

end

