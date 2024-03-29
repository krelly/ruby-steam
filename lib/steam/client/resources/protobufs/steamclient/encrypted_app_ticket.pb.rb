# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'

module SteamCommunity
  module Internal

    ##
    # Message Classes
    #
    class EncryptedAppTicket < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class EncryptedAppTicket
      optional :uint32, :ticket_version_no, 1
      optional :uint32, :crc_encryptedticket, 2
      optional :uint32, :cb_encrypteduserdata, 3
      optional :uint32, :cb_encrypted_appownershipticket, 4
      optional :bytes, :encrypted_ticket, 5
    end

  end

end

