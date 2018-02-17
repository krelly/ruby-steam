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
    class CSiteLicense_ClientSiteAssociation_Notification < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CSiteLicense_ClientSiteAssociation_Notification
      optional :bytes, :site_association_file, 1
    end


    ##
    # Service Classes
    #
    class SiteLicense < ::Protobuf::Rpc::Service
      rpc :client_site_association, ::SteamCommunity::Internal::CSiteLicense_ClientSiteAssociation_Notification, ::SteamCommunity::Internal::NoResponse
    end

  end

end

