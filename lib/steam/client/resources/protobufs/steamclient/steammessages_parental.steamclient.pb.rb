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
    class ParentalApp < ::Protobuf::Message; end
    class ParentalSettings < ::Protobuf::Message; end
    class CParental_EnableParentalSettings_Request < ::Protobuf::Message; end
    class CParental_EnableParentalSettings_Response < ::Protobuf::Message; end
    class CParental_DisableParentalSettings_Request < ::Protobuf::Message; end
    class CParental_DisableParentalSettings_Response < ::Protobuf::Message; end
    class CParental_GetParentalSettings_Request < ::Protobuf::Message; end
    class CParental_GetParentalSettings_Response < ::Protobuf::Message; end
    class CParental_GetSignedParentalSettings_Request < ::Protobuf::Message; end
    class CParental_GetSignedParentalSettings_Response < ::Protobuf::Message; end
    class CParental_SetParentalSettings_Request < ::Protobuf::Message; end
    class CParental_SetParentalSettings_Response < ::Protobuf::Message; end
    class CParental_ValidateToken_Request < ::Protobuf::Message; end
    class CParental_ValidateToken_Response < ::Protobuf::Message; end
    class CParental_ValidatePassword_Request < ::Protobuf::Message; end
    class CParental_ValidatePassword_Response < ::Protobuf::Message; end
    class CParental_LockClient_Request < ::Protobuf::Message; end
    class CParental_LockClient_Response < ::Protobuf::Message; end
    class CParental_RequestRecoveryCode_Request < ::Protobuf::Message; end
    class CParental_RequestRecoveryCode_Response < ::Protobuf::Message; end
    class CParental_DisableWithRecoveryCode_Request < ::Protobuf::Message; end
    class CParental_DisableWithRecoveryCode_Response < ::Protobuf::Message; end
    class CParental_ParentalSettingsChange_Notification < ::Protobuf::Message; end
    class CParental_ParentalUnlock_Notification < ::Protobuf::Message; end
    class CParental_ParentalLock_Notification < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class ParentalApp
      optional :uint32, :appid, 1
      optional :bool, :is_allowed, 2
    end

    class ParentalSettings
      optional :fixed64, :steamid, 1
      optional :uint32, :applist_base_id, 2
      optional :string, :applist_base_description, 3
      repeated ::SteamCommunity::Internal::ParentalApp, :applist_base, 4
      repeated ::SteamCommunity::Internal::ParentalApp, :applist_custom, 5
      optional :uint32, :passwordhashtype, 6
      optional :bytes, :salt, 7
      optional :bytes, :passwordhash, 8
      optional :bool, :is_enabled, 9
      optional :uint32, :enabled_features, 10
      optional :string, :recovery_email, 11
    end

    class CParental_EnableParentalSettings_Request
      optional :string, :password, 1
      optional ::SteamCommunity::Internal::ParentalSettings, :settings, 2
      optional :string, :sessionid, 3
      optional :uint32, :enablecode, 4
      optional :fixed64, :steamid, 10
    end

    class CParental_DisableParentalSettings_Request
      optional :string, :password, 1
      optional :fixed64, :steamid, 10
    end

    class CParental_GetParentalSettings_Request
      optional :fixed64, :steamid, 10
    end

    class CParental_GetParentalSettings_Response
      optional ::SteamCommunity::Internal::ParentalSettings, :settings, 1
    end

    class CParental_GetSignedParentalSettings_Request
      optional :uint32, :priority, 1
    end

    class CParental_GetSignedParentalSettings_Response
      optional :bytes, :serialized_settings, 1
      optional :bytes, :signature, 2
    end

    class CParental_SetParentalSettings_Request
      optional :string, :password, 1
      optional ::SteamCommunity::Internal::ParentalSettings, :settings, 2
      optional :string, :new_password, 3
      optional :string, :sessionid, 4
      optional :fixed64, :steamid, 10
    end

    class CParental_ValidateToken_Request
      optional :string, :unlock_token, 1
    end

    class CParental_ValidatePassword_Request
      optional :string, :password, 1
      optional :string, :session, 2
      optional :bool, :send_unlock_on_success, 3
    end

    class CParental_ValidatePassword_Response
      optional :string, :token, 1
    end

    class CParental_LockClient_Request
      optional :string, :session, 1
    end

    class CParental_DisableWithRecoveryCode_Request
      optional :uint32, :recovery_code, 1
      optional :fixed64, :steamid, 10
    end

    class CParental_ParentalSettingsChange_Notification
      optional :bytes, :serialized_settings, 1
      optional :bytes, :signature, 2
      optional :string, :password, 3
      optional :string, :sessionid, 4
    end

    class CParental_ParentalUnlock_Notification
      optional :string, :password, 1
      optional :string, :sessionid, 2
    end

    class CParental_ParentalLock_Notification
      optional :string, :sessionid, 1
    end


    ##
    # Service Classes
    #
    class Parental < ::Protobuf::Rpc::Service
      rpc :enable_parental_settings, ::SteamCommunity::Internal::CParental_EnableParentalSettings_Request, ::SteamCommunity::Internal::CParental_EnableParentalSettings_Response
      rpc :disable_parental_settings, ::SteamCommunity::Internal::CParental_DisableParentalSettings_Request, ::SteamCommunity::Internal::CParental_DisableParentalSettings_Response
      rpc :get_parental_settings, ::SteamCommunity::Internal::CParental_GetParentalSettings_Request, ::SteamCommunity::Internal::CParental_GetParentalSettings_Response
      rpc :get_signed_parental_settings, ::SteamCommunity::Internal::CParental_GetSignedParentalSettings_Request, ::SteamCommunity::Internal::CParental_GetSignedParentalSettings_Response
      rpc :set_parental_settings, ::SteamCommunity::Internal::CParental_SetParentalSettings_Request, ::SteamCommunity::Internal::CParental_SetParentalSettings_Response
      rpc :validate_token, ::SteamCommunity::Internal::CParental_ValidateToken_Request, ::SteamCommunity::Internal::CParental_ValidateToken_Response
      rpc :validate_password, ::SteamCommunity::Internal::CParental_ValidatePassword_Request, ::SteamCommunity::Internal::CParental_ValidatePassword_Response
      rpc :lock_client, ::SteamCommunity::Internal::CParental_LockClient_Request, ::SteamCommunity::Internal::CParental_LockClient_Response
      rpc :request_recovery_code, ::SteamCommunity::Internal::CParental_RequestRecoveryCode_Request, ::SteamCommunity::Internal::CParental_RequestRecoveryCode_Response
      rpc :disable_with_recovery_code, ::SteamCommunity::Internal::CParental_DisableWithRecoveryCode_Request, ::SteamCommunity::Internal::CParental_DisableWithRecoveryCode_Response
    end

    class ParentalClient < ::Protobuf::Rpc::Service
      rpc :notify_settings_change, ::SteamCommunity::Internal::CParental_ParentalSettingsChange_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :notify_unlock, ::SteamCommunity::Internal::CParental_ParentalUnlock_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :notify_lock, ::SteamCommunity::Internal::CParental_ParentalLock_Notification, ::SteamCommunity::Internal::NoResponse
    end

  end

end

