# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'


##
# Imports
#
require_relative 'google/protobuf/descriptor.pb'

module SteamCommunity
  module Internal

    ##
    # Enum Classes
    #
    class EProtoExecutionSite < ::Protobuf::Enum
      define :K_Eprotoexecutionsiteunknown, 0
      define :K_Eprotoexecutionsitesteamclient, 2
    end


    ##
    # Message Classes
    #
    class NoResponse < ::Protobuf::Message; end


    ##
    # Message Fields
    #

    ##
    # Extended Message Fields
    #
    class Google::Protobuf::FieldOptions < ::Protobuf::Message
      optional :string, :description, 50000, :extension => true
    end

    class Google::Protobuf::ServiceOptions < ::Protobuf::Message
      optional :string, :service_description, 50000, :extension => true
      optional ::SteamCommunity::Internal::EProtoExecutionSite, :service_execution_site, 50008, :default => ::SteamCommunity::Internal::EProtoExecutionSite::K_Eprotoexecutionsiteunknown, :extension => true
    end

    class Google::Protobuf::MethodOptions < ::Protobuf::Message
      optional :string, :method_description, 50000, :extension => true
    end

    class Google::Protobuf::EnumOptions < ::Protobuf::Message
      optional :string, :enum_description, 50000, :extension => true
    end

    class Google::Protobuf::EnumValueOptions < ::Protobuf::Message
      optional :string, :enum_value_description, 50000, :extension => true
    end

  end

end
