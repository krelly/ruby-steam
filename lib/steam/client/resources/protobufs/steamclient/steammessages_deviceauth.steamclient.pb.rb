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
    class CDeviceAuth_GetOwnAuthorizedDevices_Request < ::Protobuf::Message; end
    class CDeviceAuth_GetOwnAuthorizedDevices_Response < ::Protobuf::Message
      class Device < ::Protobuf::Message; end

    end

    class CDeviceAuth_AcceptAuthorizationRequest_Request < ::Protobuf::Message; end
    class CDeviceAuth_AcceptAuthorizationRequest_Response < ::Protobuf::Message; end
    class CDeviceAuth_AuthorizeRemoteDevice_Request < ::Protobuf::Message; end
    class CDeviceAuth_AuthorizeRemoteDevice_Response < ::Protobuf::Message; end
    class CDeviceAuth_DeauthorizeRemoteDevice_Request < ::Protobuf::Message; end
    class CDeviceAuth_DeauthorizeRemoteDevice_Response < ::Protobuf::Message; end
    class CDeviceAuth_GetUsedAuthorizedDevices_Request < ::Protobuf::Message; end
    class CDeviceAuth_GetUsedAuthorizedDevices_Response < ::Protobuf::Message
      class Device < ::Protobuf::Message; end

    end

    class CDeviceAuth_GetAuthorizedBorrowers_Request < ::Protobuf::Message; end
    class CDeviceAuth_GetAuthorizedBorrowers_Response < ::Protobuf::Message
      class Borrower < ::Protobuf::Message; end

    end

    class CDeviceAuth_AddAuthorizedBorrowers_Request < ::Protobuf::Message; end
    class CDeviceAuth_AddAuthorizedBorrowers_Response < ::Protobuf::Message; end
    class CDeviceAuth_RemoveAuthorizedBorrowers_Request < ::Protobuf::Message; end
    class CDeviceAuth_RemoveAuthorizedBorrowers_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CDeviceAuth_GetOwnAuthorizedDevices_Request
      optional :fixed64, :steamid, 1
      optional :bool, :include_canceled, 2
    end

    class CDeviceAuth_GetOwnAuthorizedDevices_Response
      class Device
        optional :fixed64, :auth_device_token, 1
        optional :string, :device_name, 2
        optional :bool, :is_pending, 3
        optional :bool, :is_canceled, 4
        optional :uint32, :last_time_used, 5
        optional :fixed64, :last_borrower_id, 6
        optional :uint32, :last_app_played, 7
        optional :bool, :is_limited, 8
      end

      repeated ::SteamCommunity::Internal::CDeviceAuth_GetOwnAuthorizedDevices_Response::Device, :devices, 1
    end

    class CDeviceAuth_AcceptAuthorizationRequest_Request
      optional :fixed64, :steamid, 1
      optional :fixed64, :auth_device_token, 2
      optional :fixed64, :auth_code, 3
      optional :fixed64, :from_steamid, 4
    end

    class CDeviceAuth_AuthorizeRemoteDevice_Request
      optional :fixed64, :steamid, 1
      optional :fixed64, :auth_device_token, 2
    end

    class CDeviceAuth_DeauthorizeRemoteDevice_Request
      optional :fixed64, :steamid, 1
      optional :fixed64, :auth_device_token, 2
    end

    class CDeviceAuth_GetUsedAuthorizedDevices_Request
      optional :fixed64, :steamid, 1
    end

    class CDeviceAuth_GetUsedAuthorizedDevices_Response
      class Device
        optional :fixed64, :auth_device_token, 1
        optional :string, :device_name, 2
        optional :fixed64, :owner_steamid, 3
        optional :uint32, :last_time_used, 4
        optional :uint32, :last_app_played, 5
      end

      repeated ::SteamCommunity::Internal::CDeviceAuth_GetUsedAuthorizedDevices_Response::Device, :devices, 1
    end

    class CDeviceAuth_GetAuthorizedBorrowers_Request
      optional :fixed64, :steamid, 1
      optional :bool, :include_canceled, 2
      optional :bool, :include_pending, 3
    end

    class CDeviceAuth_GetAuthorizedBorrowers_Response
      class Borrower
        optional :fixed64, :steamid, 1
        optional :bool, :is_pending, 2
        optional :bool, :is_canceled, 3
        optional :uint32, :time_created, 4
      end

      repeated ::SteamCommunity::Internal::CDeviceAuth_GetAuthorizedBorrowers_Response::Borrower, :borrowers, 1
    end

    class CDeviceAuth_AddAuthorizedBorrowers_Request
      optional :fixed64, :steamid, 1
      repeated :fixed64, :steamid_borrower, 2
    end

    class CDeviceAuth_AddAuthorizedBorrowers_Response
      optional :int32, :seconds_to_wait, 1
    end

    class CDeviceAuth_RemoveAuthorizedBorrowers_Request
      optional :fixed64, :steamid, 1
      repeated :fixed64, :steamid_borrower, 2
    end


    ##
    # Service Classes
    #
    class DeviceAuth < ::Protobuf::Rpc::Service
      rpc :get_own_authorized_devices, ::SteamCommunity::Internal::CDeviceAuth_GetOwnAuthorizedDevices_Request, ::SteamCommunity::Internal::CDeviceAuth_GetOwnAuthorizedDevices_Response
      rpc :accept_authorization_request, ::SteamCommunity::Internal::CDeviceAuth_AcceptAuthorizationRequest_Request, ::SteamCommunity::Internal::CDeviceAuth_AcceptAuthorizationRequest_Response
      rpc :authorize_remote_device, ::SteamCommunity::Internal::CDeviceAuth_AuthorizeRemoteDevice_Request, ::SteamCommunity::Internal::CDeviceAuth_AuthorizeRemoteDevice_Response
      rpc :deauthorize_remote_device, ::SteamCommunity::Internal::CDeviceAuth_DeauthorizeRemoteDevice_Request, ::SteamCommunity::Internal::CDeviceAuth_DeauthorizeRemoteDevice_Response
      rpc :get_used_authorized_devices, ::SteamCommunity::Internal::CDeviceAuth_GetUsedAuthorizedDevices_Request, ::SteamCommunity::Internal::CDeviceAuth_GetUsedAuthorizedDevices_Response
      rpc :get_authorized_borrowers, ::SteamCommunity::Internal::CDeviceAuth_GetAuthorizedBorrowers_Request, ::SteamCommunity::Internal::CDeviceAuth_GetAuthorizedBorrowers_Response
      rpc :add_authorized_borrowers, ::SteamCommunity::Internal::CDeviceAuth_AddAuthorizedBorrowers_Request, ::SteamCommunity::Internal::CDeviceAuth_AddAuthorizedBorrowers_Response
      rpc :remove_authorized_borrowers, ::SteamCommunity::Internal::CDeviceAuth_RemoveAuthorizedBorrowers_Request, ::SteamCommunity::Internal::CDeviceAuth_RemoveAuthorizedBorrowers_Response
    end

  end

end

