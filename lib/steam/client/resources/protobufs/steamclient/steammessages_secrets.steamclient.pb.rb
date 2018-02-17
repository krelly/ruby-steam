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
    # Enum Classes
    #
    class EKeyEscrowUsage < ::Protobuf::Enum
      define :K_Ekeyescrowusagestreamingdevice, 0
    end


    ##
    # Message Classes
    #
    class CKeyEscrow_Request < ::Protobuf::Message; end
    class CKeyEscrow_Ticket < ::Protobuf::Message; end
    class CKeyEscrow_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CKeyEscrow_Request
      optional :bytes, :rsa_oaep_sha_ticket, 1
      optional :bytes, :password, 2
      optional ::SteamCommunity::Internal::EKeyEscrowUsage, :usage, 3, :default => ::SteamCommunity::Internal::EKeyEscrowUsage::K_Ekeyescrowusagestreamingdevice
      optional :string, :device_name, 4
    end

    class CKeyEscrow_Ticket
      optional :bytes, :password, 1
      optional :uint64, :identifier, 2
      optional :bytes, :payload, 3
      optional :uint32, :timestamp, 4
      optional ::SteamCommunity::Internal::EKeyEscrowUsage, :usage, 5, :default => ::SteamCommunity::Internal::EKeyEscrowUsage::K_Ekeyescrowusagestreamingdevice
      optional :string, :device_name, 6
      optional :string, :device_model, 7
      optional :string, :device_serial, 8
      optional :uint32, :device_provisioning_id, 9
    end

    class CKeyEscrow_Response
      optional ::SteamCommunity::Internal::CKeyEscrow_Ticket, :ticket, 1
    end


    ##
    # Service Classes
    #
    class Secrets < ::Protobuf::Rpc::Service
      rpc :key_escrow, ::SteamCommunity::Internal::CKeyEscrow_Request, ::SteamCommunity::Internal::CKeyEscrow_Response
    end

  end

end

