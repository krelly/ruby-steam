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
    class CCredentials_TestAvailablePassword_Request < ::Protobuf::Message; end
    class CCredentials_TestAvailablePassword_Response < ::Protobuf::Message; end
    class CCredentials_GetSteamGuardDetails_Request < ::Protobuf::Message; end
    class CCredentials_GetSteamGuardDetails_Response < ::Protobuf::Message
      class NewAuthentication < ::Protobuf::Message; end
      class SessionData < ::Protobuf::Message; end

    end

    class CCredentials_NewMachineNotificationDialog_Request < ::Protobuf::Message; end
    class CCredentials_NewMachineNotificationDialog_Response < ::Protobuf::Message; end
    class CCredentials_ValidateEmailAddress_Request < ::Protobuf::Message; end
    class CCredentials_ValidateEmailAddress_Response < ::Protobuf::Message; end
    class CCredentials_SteamGuardPhishingReport_Request < ::Protobuf::Message; end
    class CCredentials_SteamGuardPhishingReport_Response < ::Protobuf::Message; end
    class CCredentials_LastCredentialChangeTime_Request < ::Protobuf::Message; end
    class CCredentials_LastCredentialChangeTime_Response < ::Protobuf::Message; end
    class CCredentials_GetAccountAuthSecret_Request < ::Protobuf::Message; end
    class CCredentials_GetAccountAuthSecret_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CCredentials_TestAvailablePassword_Request
      optional :string, :password, 1
      optional :bytes, :sha_digest_password, 2
      optional :string, :account_name, 3
    end

    class CCredentials_TestAvailablePassword_Response
      optional :bool, :is_valid, 3
    end

    class CCredentials_GetSteamGuardDetails_Request
      optional :bool, :include_new_authentications, 1, :default => true
      optional :string, :webcookie, 2
      optional :fixed32, :timestamp_minimum_wanted, 3
      optional :int32, :ipaddress, 4
    end

    class CCredentials_GetSteamGuardDetails_Response
      class NewAuthentication
        optional :fixed32, :timestamp_steamguard_enabled, 1
        optional :bool, :is_web_cookie, 2
        optional :int32, :ipaddress, 3
        optional :string, :geoloc_info, 4
        optional :bool, :is_remembered, 5
        optional :string, :machine_name_user_supplied, 6
        optional :int32, :status, 7
      end

      class SessionData
        optional :uint64, :machine_id, 1
        optional :string, :machine_name_userchosen, 2
        optional :fixed32, :timestamp_machine_steamguard_enabled, 3
        optional :bool, :authentication_exists_from_geoloc_before_mintime, 4
        repeated ::SteamCommunity::Internal::CCredentials_GetSteamGuardDetails_Response::NewAuthentication, :newauthentication, 5
        optional :bool, :authentication_exists_from_same_ip_before_mintime, 6
        optional :uint32, :public_ipv4, 7
      end

      optional :bool, :is_steamguard_enabled, 1
      optional :fixed32, :timestamp_steamguard_enabled, 2
      repeated ::SteamCommunity::Internal::CCredentials_GetSteamGuardDetails_Response::NewAuthentication, :deprecated_newauthentication, 3
      optional :string, :deprecated_machine_name_userchosen, 4
      optional :fixed32, :deprecated_timestamp_machine_steamguard_enabled, 5
      optional :bool, :deprecated_authentication_exists_from_geoloc_before_mintime, 6
      optional :uint64, :deprecated_machine_id, 7
      repeated ::SteamCommunity::Internal::CCredentials_GetSteamGuardDetails_Response::SessionData, :session_data, 8
      optional :bool, :is_twofactor_enabled, 9
      optional :fixed32, :timestamp_twofactor_enabled, 10
      optional :bool, :is_phone_verified, 11
    end

    class CCredentials_NewMachineNotificationDialog_Request
      optional :bool, :is_approved, 1
      optional :bool, :is_wizard_complete, 2
    end

    class CCredentials_ValidateEmailAddress_Request
      optional :string, :stoken, 1
    end

    class CCredentials_ValidateEmailAddress_Response
      optional :bool, :was_validated, 1
    end

    class CCredentials_SteamGuardPhishingReport_Request
      optional :string, :param_string, 1
      optional :uint32, :ipaddress_actual, 2
    end

    class CCredentials_SteamGuardPhishingReport_Response
      optional :uint32, :ipaddress_loginattempt, 1
      optional :string, :countryname_loginattempt, 2
      optional :string, :statename_loginattempt, 3
      optional :string, :cityname_loginattempt, 4
      optional :uint32, :ipaddress_actual, 5
      optional :string, :countryname_actual, 6
      optional :string, :statename_actual, 7
      optional :string, :cityname_actual, 8
      optional :string, :steamguard_code, 9
    end

    class CCredentials_LastCredentialChangeTime_Response
      optional :fixed32, :timestamp_last_password_change, 1
      optional :fixed32, :timestamp_last_email_change, 2
      optional :fixed32, :timestamp_last_password_reset, 3
    end

    class CCredentials_GetAccountAuthSecret_Response
      optional :int32, :secret_id, 1
      optional :bytes, :secret, 2
    end


    ##
    # Service Classes
    #
    class Credentials < ::Protobuf::Rpc::Service
      rpc :test_available_password, ::SteamCommunity::Internal::CCredentials_TestAvailablePassword_Request, ::SteamCommunity::Internal::CCredentials_TestAvailablePassword_Response
      rpc :get_steam_guard_details, ::SteamCommunity::Internal::CCredentials_GetSteamGuardDetails_Request, ::SteamCommunity::Internal::CCredentials_GetSteamGuardDetails_Response
      rpc :new_machine_notification_dialog_result, ::SteamCommunity::Internal::CCredentials_NewMachineNotificationDialog_Request, ::SteamCommunity::Internal::CCredentials_NewMachineNotificationDialog_Response
      rpc :validate_email_address, ::SteamCommunity::Internal::CCredentials_ValidateEmailAddress_Request, ::SteamCommunity::Internal::CCredentials_ValidateEmailAddress_Response
      rpc :steam_guard_phishing_report, ::SteamCommunity::Internal::CCredentials_SteamGuardPhishingReport_Request, ::SteamCommunity::Internal::CCredentials_SteamGuardPhishingReport_Response
      rpc :get_credential_change_time_details, ::SteamCommunity::Internal::CCredentials_LastCredentialChangeTime_Request, ::SteamCommunity::Internal::CCredentials_LastCredentialChangeTime_Response
      rpc :get_account_auth_secret, ::SteamCommunity::Internal::CCredentials_GetAccountAuthSecret_Request, ::SteamCommunity::Internal::CCredentials_GetAccountAuthSecret_Response
    end

  end

end

