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
    class CPhysicalGoods_RegisterSteamController_Request < ::Protobuf::Message; end
    class CPhysicalGoods_RegisterSteamController_Response < ::Protobuf::Message; end
    class CPhysicalGoods_CompleteSteamControllerRegistration_Request < ::Protobuf::Message; end
    class CPhysicalGoods_CompleteSteamControllerRegistration_Response < ::Protobuf::Message; end
    class CPhysicalGoods_QueryAccountsRegisteredToSerial_Request < ::Protobuf::Message; end
    class CPhysicalGoods_QueryAccountsRegisteredToSerial_Accounts < ::Protobuf::Message; end
    class CPhysicalGoods_QueryAccountsRegisteredToSerial_Response < ::Protobuf::Message; end
    class CPhysicalGoods_SteamControllerSetConfig_ControllerConfig < ::Protobuf::Message; end
    class CPhysicalGoods_SteamControllerSetConfig_Request < ::Protobuf::Message; end
    class CPhysicalGoods_SteamControllerSetConfig_Response < ::Protobuf::Message; end
    class CPhysicalGoods_SteamControllerGetConfig_Request < ::Protobuf::Message; end
    class CPhysicalGoods_SteamControllerGetConfig_ControllerConfig < ::Protobuf::Message; end
    class CPhysicalGoods_SteamControllerGetConfig_Response < ::Protobuf::Message; end
    class CPhysicalGoods_DeRegisterSteamController_Request < ::Protobuf::Message; end
    class CPhysicalGoods_DeRegisterSteamController_Response < ::Protobuf::Message; end
    class CPhysicalGoods_SetPersonalizationFile_Request < ::Protobuf::Message; end
    class CPhysicalGoods_SetPersonalizationFile_Response < ::Protobuf::Message; end
    class CPhysicalGoods_GetPersonalizationFile_Request < ::Protobuf::Message; end
    class CPhysicalGoods_GetPersonalizationFile_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CPhysicalGoods_RegisterSteamController_Request
      optional :string, :serial_number, 1
      optional :string, :controller_code, 2
    end

    class CPhysicalGoods_CompleteSteamControllerRegistration_Request
      optional :string, :serial_number, 1
      optional :string, :controller_code, 2
    end

    class CPhysicalGoods_QueryAccountsRegisteredToSerial_Request
      optional :string, :serial_number, 1
      optional :string, :controller_code, 2
    end

    class CPhysicalGoods_QueryAccountsRegisteredToSerial_Accounts
      optional :uint32, :accountid, 1
      optional :bool, :registration_complete, 2
    end

    class CPhysicalGoods_QueryAccountsRegisteredToSerial_Response
      repeated ::SteamCommunity::Internal::CPhysicalGoods_QueryAccountsRegisteredToSerial_Accounts, :accounts, 1
    end

    class CPhysicalGoods_SteamControllerSetConfig_ControllerConfig
      optional :string, :appidorname, 1
      optional :uint64, :publishedfileid, 2
      optional :string, :templatename, 3
    end

    class CPhysicalGoods_SteamControllerSetConfig_Request
      optional :string, :serial_number, 1
      optional :string, :controller_code, 2
      optional :uint32, :accountid, 3
      repeated ::SteamCommunity::Internal::CPhysicalGoods_SteamControllerSetConfig_ControllerConfig, :configurations, 4
    end

    class CPhysicalGoods_SteamControllerGetConfig_Request
      optional :string, :serial_number, 1
      optional :string, :controller_code, 2
      optional :uint32, :accountid, 3
      optional :string, :appidorname, 4
    end

    class CPhysicalGoods_SteamControllerGetConfig_ControllerConfig
      optional :string, :appidorname, 1
      optional :uint64, :publishedfileid, 2
      optional :string, :templatename, 3
    end

    class CPhysicalGoods_SteamControllerGetConfig_Response
      repeated ::SteamCommunity::Internal::CPhysicalGoods_SteamControllerGetConfig_ControllerConfig, :configurations, 1
    end

    class CPhysicalGoods_DeRegisterSteamController_Request
      optional :string, :serial_number, 1
      optional :string, :controller_code, 2
      optional :uint32, :accountid, 3
    end

    class CPhysicalGoods_SetPersonalizationFile_Request
      optional :string, :serial_number, 1
      optional :uint64, :publishedfileid, 2
      optional :uint32, :accountid, 3
    end

    class CPhysicalGoods_GetPersonalizationFile_Request
      optional :string, :serial_number, 1
      optional :uint32, :accountid, 2
    end

    class CPhysicalGoods_GetPersonalizationFile_Response
      optional :uint64, :publishedfileid, 1
    end


    ##
    # Service Classes
    #
    class PhysicalGoods < ::Protobuf::Rpc::Service
      rpc :register_steam_controller, ::SteamCommunity::Internal::CPhysicalGoods_RegisterSteamController_Request, ::SteamCommunity::Internal::CPhysicalGoods_RegisterSteamController_Response
      rpc :complete_steam_controller_registration, ::SteamCommunity::Internal::CPhysicalGoods_CompleteSteamControllerRegistration_Request, ::SteamCommunity::Internal::CPhysicalGoods_CompleteSteamControllerRegistration_Response
      rpc :query_accounts_registered_to_controller, ::SteamCommunity::Internal::CPhysicalGoods_QueryAccountsRegisteredToSerial_Request, ::SteamCommunity::Internal::CPhysicalGoods_QueryAccountsRegisteredToSerial_Response
      rpc :set_desired_controller_config_for_app, ::SteamCommunity::Internal::CPhysicalGoods_SteamControllerSetConfig_Request, ::SteamCommunity::Internal::CPhysicalGoods_SteamControllerSetConfig_Response
      rpc :get_desired_controller_config_for_app, ::SteamCommunity::Internal::CPhysicalGoods_SteamControllerGetConfig_Request, ::SteamCommunity::Internal::CPhysicalGoods_SteamControllerGetConfig_Response
      rpc :de_register_steam_controller, ::SteamCommunity::Internal::CPhysicalGoods_DeRegisterSteamController_Request, ::SteamCommunity::Internal::CPhysicalGoods_DeRegisterSteamController_Response
      rpc :set_controller_personalization_file, ::SteamCommunity::Internal::CPhysicalGoods_SetPersonalizationFile_Request, ::SteamCommunity::Internal::CPhysicalGoods_SetPersonalizationFile_Response
      rpc :get_controller_personalization_file, ::SteamCommunity::Internal::CPhysicalGoods_GetPersonalizationFile_Request, ::SteamCommunity::Internal::CPhysicalGoods_GetPersonalizationFile_Response
    end

  end

end

