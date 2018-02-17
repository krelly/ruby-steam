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
    class CMsgTest_MessageToClient_Request < ::Protobuf::Message; end
    class CMsgTest_MessageToClient_Response < ::Protobuf::Message; end
    class CMsgTest_NotifyClient_Notification < ::Protobuf::Message; end
    class CMsgTest_MessageToServer_Request < ::Protobuf::Message; end
    class CMsgTest_MessageToServer_Response < ::Protobuf::Message; end
    class CMsgTest_NotifyServer_Notification < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CMsgTest_MessageToClient_Request
      optional :string, :some_text, 1
    end

    class CMsgTest_MessageToClient_Response
      optional :string, :some_text, 1
    end

    class CMsgTest_NotifyClient_Notification
      optional :string, :some_text, 1
    end

    class CMsgTest_MessageToServer_Request
      optional :string, :some_text, 1
    end

    class CMsgTest_MessageToServer_Response
      optional :string, :some_text, 1
    end

    class CMsgTest_NotifyServer_Notification
      optional :string, :some_text, 1
    end


    ##
    # Service Classes
    #
    class TestSteamClient < ::Protobuf::Rpc::Service
      rpc :message_to_client, ::SteamCommunity::Internal::CMsgTest_MessageToClient_Request, ::SteamCommunity::Internal::CMsgTest_MessageToClient_Response
      rpc :notify_client, ::SteamCommunity::Internal::CMsgTest_NotifyClient_Notification, ::SteamCommunity::Internal::NoResponse
    end

    class TestServerFromClient < ::Protobuf::Rpc::Service
      rpc :message_to_server, ::SteamCommunity::Internal::CMsgTest_MessageToServer_Request, ::SteamCommunity::Internal::CMsgTest_MessageToServer_Response
      rpc :notify_server, ::SteamCommunity::Internal::CMsgTest_NotifyServer_Notification, ::SteamCommunity::Internal::NoResponse
    end

  end

end

