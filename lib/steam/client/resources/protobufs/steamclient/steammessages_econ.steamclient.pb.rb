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
    class CEcon_ClientGetItemShopOverlayAuthURL_Request < ::Protobuf::Message; end
    class CEcon_ClientGetItemShopOverlayAuthURL_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CEcon_ClientGetItemShopOverlayAuthURL_Request
      optional :string, :return_url, 1
    end

    class CEcon_ClientGetItemShopOverlayAuthURL_Response
      optional :string, :url, 1
    end


    ##
    # Service Classes
    #
    class Econ < ::Protobuf::Rpc::Service
      rpc :client_get_item_shop_overlay_auth_url, ::SteamCommunity::Internal::CEcon_ClientGetItemShopOverlayAuthURL_Request, ::SteamCommunity::Internal::CEcon_ClientGetItemShopOverlayAuthURL_Response
    end

  end

end

