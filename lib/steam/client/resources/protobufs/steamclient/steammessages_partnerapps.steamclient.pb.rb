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
    class CPartnerApps_RequestUploadToken_Request < ::Protobuf::Message; end
    class CPartnerApps_RequestUploadToken_Response < ::Protobuf::Message; end
    class CPartnerApps_FinishUpload_Request < ::Protobuf::Message; end
    class CPartnerApps_FinishUploadKVSign_Response < ::Protobuf::Message; end
    class CPartnerApps_FinishUploadLegacyDRM_Request < ::Protobuf::Message; end
    class CPartnerApps_FinishUploadLegacyDRM_Response < ::Protobuf::Message; end
    class CPartnerApps_FinishUpload_Response < ::Protobuf::Message; end
    class CPartnerApps_FindDRMUploads_Request < ::Protobuf::Message; end
    class CPartnerApps_ExistingDRMUpload < ::Protobuf::Message; end
    class CPartnerApps_FindDRMUploads_Response < ::Protobuf::Message; end
    class CPartnerApps_Download_Request < ::Protobuf::Message; end
    class CPartnerApps_Download_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CPartnerApps_RequestUploadToken_Request
      optional :string, :filename, 1
      optional :uint32, :appid, 2
    end

    class CPartnerApps_RequestUploadToken_Response
      optional :uint64, :upload_token, 1
      optional :string, :location, 2
      optional :uint64, :routing_id, 3
    end

    class CPartnerApps_FinishUpload_Request
      optional :uint64, :upload_token, 1
      optional :uint64, :routing_id, 2
      optional :uint32, :app_id, 3
    end

    class CPartnerApps_FinishUploadKVSign_Response
      optional :string, :signed_installscript, 1
    end

    class CPartnerApps_FinishUploadLegacyDRM_Request
      optional :uint64, :upload_token, 1
      optional :uint64, :routing_id, 2
      optional :uint32, :app_id, 3
      optional :uint32, :flags, 4
      optional :string, :tool_name, 5
    end

    class CPartnerApps_FinishUploadLegacyDRM_Response
      optional :string, :file_id, 1
    end

    class CPartnerApps_FindDRMUploads_Request
      optional :int32, :app_id, 1
    end

    class CPartnerApps_ExistingDRMUpload
      optional :string, :file_id, 1
      optional :uint32, :app_id, 2
      optional :int32, :actor_id, 3
      optional :string, :supplied_name, 5
      optional :uint32, :flags, 6
      optional :string, :mod_type, 7
      optional :fixed32, :timestamp, 8
      optional :string, :orig_file_id, 9
    end

    class CPartnerApps_FindDRMUploads_Response
      repeated ::SteamCommunity::Internal::CPartnerApps_ExistingDRMUpload, :uploads, 1
    end

    class CPartnerApps_Download_Request
      optional :string, :file_id, 1
      optional :int32, :app_id, 2
    end

    class CPartnerApps_Download_Response
      optional :string, :download_url, 1
      optional :int32, :app_id, 2
    end


    ##
    # Service Classes
    #
    class PartnerApps < ::Protobuf::Rpc::Service
      rpc :request_kv_sign_upload_token, ::SteamCommunity::Internal::CPartnerApps_RequestUploadToken_Request, ::SteamCommunity::Internal::CPartnerApps_RequestUploadToken_Response
      rpc :request_drm_upload_token, ::SteamCommunity::Internal::CPartnerApps_RequestUploadToken_Request, ::SteamCommunity::Internal::CPartnerApps_RequestUploadToken_Response
      rpc :request_ceg_upload_token, ::SteamCommunity::Internal::CPartnerApps_RequestUploadToken_Request, ::SteamCommunity::Internal::CPartnerApps_RequestUploadToken_Response
      rpc :finish_upload_kv_sign, ::SteamCommunity::Internal::CPartnerApps_FinishUpload_Request, ::SteamCommunity::Internal::CPartnerApps_FinishUploadKVSign_Response
      rpc :finish_upload_drm_upload, ::SteamCommunity::Internal::CPartnerApps_FinishUploadLegacyDRM_Request, ::SteamCommunity::Internal::CPartnerApps_FinishUploadLegacyDRM_Response
      rpc :finish_upload_ceg_upload, ::SteamCommunity::Internal::CPartnerApps_FinishUpload_Request, ::SteamCommunity::Internal::CPartnerApps_FinishUpload_Response
      rpc :find_drm_uploads, ::SteamCommunity::Internal::CPartnerApps_FindDRMUploads_Request, ::SteamCommunity::Internal::CPartnerApps_FindDRMUploads_Response
      rpc :download, ::SteamCommunity::Internal::CPartnerApps_Download_Request, ::SteamCommunity::Internal::CPartnerApps_Download_Response
    end

  end

end

