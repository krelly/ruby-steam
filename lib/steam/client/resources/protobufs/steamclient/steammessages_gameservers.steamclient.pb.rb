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
    class CGameServers_GetServerList_Request < ::Protobuf::Message; end
    class CGameServers_GetServerList_Response < ::Protobuf::Message
      class Server < ::Protobuf::Message; end

    end

    class CGameServers_GetServerSteamIDsByIP_Request < ::Protobuf::Message; end
    class CGameServers_IPsWithSteamIDs_Response < ::Protobuf::Message
      class Server < ::Protobuf::Message; end

    end

    class CGameServers_GetServerIPsBySteamID_Request < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CGameServers_GetServerList_Request
      optional :string, :filter, 1
      optional :uint32, :limit, 2, :default => 100
    end

    class CGameServers_GetServerList_Response
      class Server
        optional :string, :addr, 1
        optional :uint32, :gameport, 2
        optional :uint32, :specport, 3
        optional :fixed64, :steamid, 4
        optional :string, :name, 5
        optional :uint32, :appid, 6
        optional :string, :gamedir, 7
        optional :string, :version, 8
        optional :string, :product, 9
        optional :int32, :region, 10
        optional :int32, :players, 11
        optional :int32, :max_players, 12
        optional :int32, :bots, 13
        optional :string, :map, 14
        optional :bool, :secure, 15
        optional :bool, :dedicated, 16
        optional :string, :os, 17
        optional :string, :gametype, 18
      end

      repeated ::SteamCommunity::Internal::CGameServers_GetServerList_Response::Server, :servers, 1
    end

    class CGameServers_GetServerSteamIDsByIP_Request
      repeated :string, :server_ips, 1
    end

    class CGameServers_IPsWithSteamIDs_Response
      class Server
        optional :string, :addr, 1
        optional :fixed64, :steamid, 2
      end

      repeated ::SteamCommunity::Internal::CGameServers_IPsWithSteamIDs_Response::Server, :servers, 1
    end

    class CGameServers_GetServerIPsBySteamID_Request
      repeated :fixed64, :server_steamids, 1
    end


    ##
    # Service Classes
    #
    class GameServers < ::Protobuf::Rpc::Service
      rpc :get_server_list, ::SteamCommunity::Internal::CGameServers_GetServerList_Request, ::SteamCommunity::Internal::CGameServers_GetServerList_Response
      rpc :get_server_steam_i_ds_by_ip, ::SteamCommunity::Internal::CGameServers_GetServerSteamIDsByIP_Request, ::SteamCommunity::Internal::CGameServers_IPsWithSteamIDs_Response
      rpc :get_server_i_ps_by_steam_id, ::SteamCommunity::Internal::CGameServers_GetServerIPsBySteamID_Request, ::SteamCommunity::Internal::CGameServers_IPsWithSteamIDs_Response
    end

  end

end

