# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'

module SteamCommunity
  module Internal

    ##
    # Enum Classes
    #
    class ERemoteClientBroadcastMsg < ::Protobuf::Enum
      define :K_Eremoteclientbroadcastmsgdiscovery, 0
      define :K_Eremoteclientbroadcastmsgstatus, 1
      define :K_Eremoteclientbroadcastmsgoffline, 2
      define :K_Eremotedeviceauthorizationrequest, 3
      define :K_Eremotedeviceauthorizationresponse, 4
      define :K_Eremotedevicestreamingrequest, 5
      define :K_Eremotedevicestreamingresponse, 6
      define :K_Eremotedeviceproofrequest, 7
      define :K_Eremotedeviceproofresponse, 8
      define :K_Eremotedeviceauthorizationcancelrequest, 9
      define :K_Eremotedevicestreamingcancelrequest, 10
    end

    class ERemoteClientService < ::Protobuf::Enum
      define :K_Eremoteclientservicenone, 0
      define :K_Eremoteclientserviceremotecontrol, 1
      define :K_Eremoteclientservicegamestreaming, 2
    end

    class ERemoteDeviceAuthorizationResult < ::Protobuf::Enum
      define :K_Eremotedeviceauthorizationsuccess, 0
      define :K_Eremotedeviceauthorizationdenied, 1
      define :K_Eremotedeviceauthorizationnotloggedin, 2
      define :K_Eremotedeviceauthorizationoffline, 3
      define :K_Eremotedeviceauthorizationbusy, 4
      define :K_Eremotedeviceauthorizationinprogress, 5
      define :K_Eremotedeviceauthorizationtimedout, 6
      define :K_Eremotedeviceauthorizationfailed, 7
      define :K_Eremotedeviceauthorizationcanceled, 8
    end

    class ERemoteDeviceStreamingResult < ::Protobuf::Enum
      define :K_Eremotedevicestreamingsuccess, 0
      define :K_Eremotedevicestreamingunauthorized, 1
      define :K_Eremotedevicestreamingscreenlocked, 2
      define :K_Eremotedevicestreamingfailed, 3
      define :K_Eremotedevicestreamingbusy, 4
      define :K_Eremotedevicestreaminginprogress, 5
      define :K_Eremotedevicestreamingcanceled, 6
      define :K_Eremotedevicestreamingdriversnotinstalled, 7
      define :K_Eremotedevicestreamingdisabled, 8
      define :K_Eremotedevicestreamingbroadcastingactive, 9
      define :K_Eremotedevicestreamingvractive, 10
    end


    ##
    # Message Classes
    #
    class CMsgRemoteClientBroadcastHeader < ::Protobuf::Message; end
    class CMsgRemoteClientBroadcastStatus < ::Protobuf::Message
      class User < ::Protobuf::Message; end

    end

    class CMsgRemoteClientBroadcastDiscovery < ::Protobuf::Message; end
    class CMsgRemoteDeviceAuthorizationRequest < ::Protobuf::Message
      class EKeyEscrowUsage < ::Protobuf::Enum
        define :K_Ekeyescrowusagestreamingdevice, 0
      end

      class CKeyEscrow_Ticket < ::Protobuf::Message; end

    end

    class CMsgRemoteDeviceAuthorizationCancelRequest < ::Protobuf::Message; end
    class CMsgRemoteDeviceAuthorizationResponse < ::Protobuf::Message; end
    class CMsgRemoteDeviceStreamingRequest < ::Protobuf::Message; end
    class CMsgRemoteDeviceStreamingCancelRequest < ::Protobuf::Message; end
    class CMsgRemoteDeviceStreamingResponse < ::Protobuf::Message; end
    class CMsgRemoteDeviceProofRequest < ::Protobuf::Message; end
    class CMsgRemoteDeviceProofResponse < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CMsgRemoteClientBroadcastHeader
      optional :uint64, :client_id, 1
      optional ::SteamCommunity::Internal::ERemoteClientBroadcastMsg, :msg_type, 2, :default => ::SteamCommunity::Internal::ERemoteClientBroadcastMsg::K_Eremoteclientbroadcastmsgdiscovery
      optional :uint64, :instance_id, 3
    end

    class CMsgRemoteClientBroadcastStatus
      class User
        optional :fixed64, :steamid, 1
        optional :uint32, :auth_key_id, 2
      end

      optional :int32, :version, 1
      optional :int32, :min_version, 2
      optional :uint32, :connect_port, 3
      optional :string, :hostname, 4
      optional :uint32, :enabled_services, 6
      optional :int32, :ostype, 7, :default => 0
      optional :bool, :is64bit, 8, :default => false
      repeated ::SteamCommunity::Internal::CMsgRemoteClientBroadcastStatus::User, :users, 9
      optional :int32, :euniverse, 11
      optional :uint32, :timestamp, 12
      optional :bool, :screen_locked, 13
      optional :bool, :games_running, 14
      repeated :string, :mac_addresses, 15
      optional :uint32, :download_lan_peer_group, 16
      optional :bool, :broadcasting_active, 17
      optional :bool, :vr_active, 18
    end

    class CMsgRemoteClientBroadcastDiscovery
      optional :uint32, :seq_num, 1
      repeated :uint64, :client_ids, 2
    end

    class CMsgRemoteDeviceAuthorizationRequest
      class CKeyEscrow_Ticket
        optional :bytes, :password, 1
        optional :uint64, :identifier, 2
        optional :bytes, :payload, 3
        optional :uint32, :timestamp, 4
        optional ::SteamCommunity::Internal::CMsgRemoteDeviceAuthorizationRequest::EKeyEscrowUsage, :usage, 5, :default => ::SteamCommunity::Internal::CMsgRemoteDeviceAuthorizationRequest::EKeyEscrowUsage::K_Ekeyescrowusagestreamingdevice
        optional :string, :device_name, 6
        optional :string, :device_model, 7
        optional :string, :device_serial, 8
        optional :uint32, :device_provisioning_id, 9
      end

      required :bytes, :device_token, 1
      optional :string, :device_name, 2
      required :bytes, :encrypted_request, 3
    end

    class CMsgRemoteDeviceAuthorizationResponse
      required ::SteamCommunity::Internal::ERemoteDeviceAuthorizationResult, :result, 1, :default => ::SteamCommunity::Internal::ERemoteDeviceAuthorizationResult::K_Eremotedeviceauthorizationsuccess
    end

    class CMsgRemoteDeviceStreamingRequest
      required :uint32, :request_id, 1
      optional :int32, :maximum_resolution_x, 2
      optional :int32, :maximum_resolution_y, 3
      optional :int32, :audio_channel_count, 4, :default => 2
      optional :string, :device_version, 5
    end

    class CMsgRemoteDeviceStreamingCancelRequest
      required :uint32, :request_id, 1
    end

    class CMsgRemoteDeviceStreamingResponse
      required :uint32, :request_id, 1
      required ::SteamCommunity::Internal::ERemoteDeviceStreamingResult, :result, 2, :default => ::SteamCommunity::Internal::ERemoteDeviceStreamingResult::K_Eremotedevicestreamingsuccess
      optional :uint32, :port, 3
      optional :bytes, :encrypted_session_key, 4
      optional :int32, :virtualhere_licensed_device_count, 5
    end

    class CMsgRemoteDeviceProofRequest
      required :bytes, :challenge, 1
    end

    class CMsgRemoteDeviceProofResponse
      required :bytes, :response, 1
    end

  end

end

