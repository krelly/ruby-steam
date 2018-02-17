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
    class CTwoFactor_Status_Request < ::Protobuf::Message; end
    class CTwoFactor_Status_Response < ::Protobuf::Message; end
    class CTwoFactor_AddAuthenticator_Request < ::Protobuf::Message; end
    class CTwoFactor_AddAuthenticator_Response < ::Protobuf::Message; end
    class CTwoFactor_SendEmail_Request < ::Protobuf::Message; end
    class CTwoFactor_SendEmail_Response < ::Protobuf::Message; end
    class CTwoFactor_FinalizeAddAuthenticator_Request < ::Protobuf::Message; end
    class CTwoFactor_FinalizeAddAuthenticator_Response < ::Protobuf::Message; end
    class CTwoFactor_RemoveAuthenticator_Request < ::Protobuf::Message; end
    class CTwoFactor_RemoveAuthenticator_Response < ::Protobuf::Message; end
    class CTwoFactor_CreateEmergencyCodes_Request < ::Protobuf::Message; end
    class CTwoFactor_CreateEmergencyCodes_Response < ::Protobuf::Message; end
    class CTwoFactor_DestroyEmergencyCodes_Request < ::Protobuf::Message; end
    class CTwoFactor_DestroyEmergencyCodes_Response < ::Protobuf::Message; end
    class CTwoFactor_ValidateToken_Request < ::Protobuf::Message; end
    class CTwoFactor_ValidateToken_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CTwoFactor_Status_Request
      optional :fixed64, :steamid, 1
    end

    class CTwoFactor_Status_Response
      optional :uint32, :state, 1
      optional :uint32, :inactivation_reason, 2
      optional :uint32, :authenticator_type, 3
      optional :bool, :authenticator_allowed, 4
      optional :uint32, :steamguard_scheme, 5
      optional :string, :token_gid, 6
      optional :bool, :email_validated, 7
      optional :string, :device_identifier, 8
      optional :uint32, :time_created, 9
      optional :uint32, :revocation_attempts_remaining, 10
      optional :string, :classified_agent, 11
      optional :bool, :allow_external_authenticator, 12
      optional :uint32, :external_authenticator_type, 13
    end

    class CTwoFactor_AddAuthenticator_Request
      optional :fixed64, :steamid, 1
      optional :uint64, :authenticator_time, 2
      optional :fixed64, :serial_number, 3
      optional :uint32, :authenticator_type, 4
      optional :string, :device_identifier, 5
      optional :string, :sms_phone_id, 6
      repeated :string, :http_headers, 7
    end

    class CTwoFactor_AddAuthenticator_Response
      optional :bytes, :shared_secret, 1
      optional :fixed64, :serial_number, 2
      optional :string, :revocation_code, 3
      optional :string, :uri, 4
      optional :uint64, :server_time, 5
      optional :string, :account_name, 6
      optional :string, :token_gid, 7
      optional :bytes, :identity_secret, 8
      optional :bytes, :secret_1, 9
      optional :int32, :status, 10
    end

    class CTwoFactor_SendEmail_Request
      optional :fixed64, :steamid, 1
      optional :uint32, :email_type, 2
      optional :bool, :include_activation_code, 3
    end

    class CTwoFactor_FinalizeAddAuthenticator_Request
      optional :fixed64, :steamid, 1
      optional :string, :authenticator_code, 2
      optional :uint64, :authenticator_time, 3
      optional :string, :activation_code, 4
      repeated :string, :http_headers, 5
    end

    class CTwoFactor_FinalizeAddAuthenticator_Response
      optional :bool, :success, 1
      optional :bool, :want_more, 2
      optional :uint64, :server_time, 3
      optional :int32, :status, 4
    end

    class CTwoFactor_RemoveAuthenticator_Request
      optional :string, :revocation_code, 2
      optional :uint32, :revocation_reason, 5
      optional :uint32, :steamguard_scheme, 6
      optional :bool, :remove_all_steamguard_cookies, 7
    end

    class CTwoFactor_RemoveAuthenticator_Response
      optional :bool, :success, 1
      optional :uint64, :server_time, 3
      optional :uint32, :revocation_attempts_remaining, 5
    end

    class CTwoFactor_CreateEmergencyCodes_Response
      repeated :string, :codes, 1
    end

    class CTwoFactor_DestroyEmergencyCodes_Request
      optional :fixed64, :steamid, 1
    end

    class CTwoFactor_ValidateToken_Request
      optional :string, :code, 1
    end

    class CTwoFactor_ValidateToken_Response
      optional :bool, :valid, 1
    end


    ##
    # Service Classes
    #
    class TwoFactor < ::Protobuf::Rpc::Service
      rpc :query_status, ::SteamCommunity::Internal::CTwoFactor_Status_Request, ::SteamCommunity::Internal::CTwoFactor_Status_Response
      rpc :add_authenticator, ::SteamCommunity::Internal::CTwoFactor_AddAuthenticator_Request, ::SteamCommunity::Internal::CTwoFactor_AddAuthenticator_Response
      rpc :send_email, ::SteamCommunity::Internal::CTwoFactor_SendEmail_Request, ::SteamCommunity::Internal::CTwoFactor_SendEmail_Response
      rpc :finalize_add_authenticator, ::SteamCommunity::Internal::CTwoFactor_FinalizeAddAuthenticator_Request, ::SteamCommunity::Internal::CTwoFactor_FinalizeAddAuthenticator_Response
      rpc :remove_authenticator, ::SteamCommunity::Internal::CTwoFactor_RemoveAuthenticator_Request, ::SteamCommunity::Internal::CTwoFactor_RemoveAuthenticator_Response
      rpc :create_emergency_codes, ::SteamCommunity::Internal::CTwoFactor_CreateEmergencyCodes_Request, ::SteamCommunity::Internal::CTwoFactor_CreateEmergencyCodes_Response
      rpc :destroy_emergency_codes, ::SteamCommunity::Internal::CTwoFactor_DestroyEmergencyCodes_Request, ::SteamCommunity::Internal::CTwoFactor_DestroyEmergencyCodes_Response
      rpc :validate_token, ::SteamCommunity::Internal::CTwoFactor_ValidateToken_Request, ::SteamCommunity::Internal::CTwoFactor_ValidateToken_Response
    end

  end

end

