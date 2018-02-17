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
    class CCloud_GetUploadServerInfo_Request < ::Protobuf::Message; end
    class CCloud_GetUploadServerInfo_Response < ::Protobuf::Message; end
    class CCloud_BeginHTTPUpload_Request < ::Protobuf::Message; end
    class CCloud_BeginHTTPUpload_Response < ::Protobuf::Message
      class HTTPHeaders < ::Protobuf::Message; end

    end

    class CCloud_CommitHTTPUpload_Request < ::Protobuf::Message; end
    class CCloud_CommitHTTPUpload_Response < ::Protobuf::Message; end
    class CCloud_GetFileDetails_Request < ::Protobuf::Message; end
    class CCloud_UserFile < ::Protobuf::Message; end
    class CCloud_GetFileDetails_Response < ::Protobuf::Message; end
    class CCloud_EnumerateUserFiles_Request < ::Protobuf::Message; end
    class CCloud_EnumerateUserFiles_Response < ::Protobuf::Message; end
    class CCloud_Delete_Request < ::Protobuf::Message; end
    class CCloud_Delete_Response < ::Protobuf::Message; end
    class CCloud_GetClientEncryptionKey_Request < ::Protobuf::Message; end
    class CCloud_GetClientEncryptionKey_Response < ::Protobuf::Message; end
    class CCloud_CDNReport_Notification < ::Protobuf::Message; end
    class CCloud_ExternalStorageTransferReport_Notification < ::Protobuf::Message; end
    class CCloud_ClientBeginFileUpload_Request < ::Protobuf::Message; end
    class ClientCloudFileUploadBlockDetails < ::Protobuf::Message
      class HTTPHeaders < ::Protobuf::Message; end

    end

    class CCloud_ClientBeginFileUpload_Response < ::Protobuf::Message; end
    class CCloud_ClientCommitFileUpload_Request < ::Protobuf::Message; end
    class CCloud_ClientCommitFileUpload_Response < ::Protobuf::Message; end
    class CCloud_ClientFileDownload_Request < ::Protobuf::Message; end
    class CCloud_ClientFileDownload_Response < ::Protobuf::Message
      class HTTPHeaders < ::Protobuf::Message; end

    end

    class CCloud_ClientDeleteFile_Request < ::Protobuf::Message; end
    class CCloud_ClientDeleteFile_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CCloud_GetUploadServerInfo_Request
      optional :uint32, :appid, 1
    end

    class CCloud_GetUploadServerInfo_Response
      optional :string, :server_url, 1
    end

    class CCloud_BeginHTTPUpload_Request
      optional :uint32, :appid, 1
      optional :uint32, :file_size, 2
      optional :string, :filename, 3
      optional :string, :file_sha, 4
      optional :bool, :is_public, 5
      repeated :string, :platforms_to_sync, 6
      repeated :string, :request_headers_names, 7
      repeated :string, :request_headers_values, 8
    end

    class CCloud_BeginHTTPUpload_Response
      class HTTPHeaders
        optional :string, :name, 1
        optional :string, :value, 2
      end

      optional :fixed64, :ugcid, 1
      optional :fixed32, :timestamp, 2
      optional :string, :url_host, 3
      optional :string, :url_path, 4
      optional :bool, :use_https, 5
      repeated ::SteamCommunity::Internal::CCloud_BeginHTTPUpload_Response::HTTPHeaders, :request_headers, 6
    end

    class CCloud_CommitHTTPUpload_Request
      optional :bool, :transfer_succeeded, 1
      optional :uint32, :appid, 2
      optional :string, :file_sha, 3
      optional :string, :filename, 4
    end

    class CCloud_CommitHTTPUpload_Response
      optional :bool, :file_committed, 1
    end

    class CCloud_GetFileDetails_Request
      optional :uint64, :ugcid, 1
      optional :uint32, :appid, 2
    end

    class CCloud_UserFile
      optional :uint32, :appid, 1
      optional :uint64, :ugcid, 2
      optional :string, :filename, 3
      optional :uint64, :timestamp, 4
      optional :uint32, :file_size, 5
      optional :string, :url, 6
      optional :fixed64, :steamid_creator, 7
    end

    class CCloud_GetFileDetails_Response
      optional ::SteamCommunity::Internal::CCloud_UserFile, :details, 1
    end

    class CCloud_EnumerateUserFiles_Request
      optional :uint32, :appid, 1
      optional :bool, :extended_details, 2
      optional :uint32, :count, 3
      optional :uint32, :start_index, 4
    end

    class CCloud_EnumerateUserFiles_Response
      repeated ::SteamCommunity::Internal::CCloud_UserFile, :files, 1
      optional :uint32, :total_files, 2
    end

    class CCloud_Delete_Request
      optional :string, :filename, 1
      optional :uint32, :appid, 2
    end

    class CCloud_GetClientEncryptionKey_Response
      optional :bytes, :key, 1
      optional :int32, :crc, 2
    end

    class CCloud_CDNReport_Notification
      optional :fixed64, :steamid, 1
      optional :string, :url, 2
      optional :bool, :success, 3
      optional :uint32, :http_status_code, 4
      optional :uint64, :expected_bytes, 5
      optional :uint64, :received_bytes, 6
      optional :uint32, :duration, 7
    end

    class CCloud_ExternalStorageTransferReport_Notification
      optional :string, :host, 1
      optional :string, :path, 2
      optional :bool, :is_upload, 3
      optional :bool, :success, 4
      optional :uint32, :http_status_code, 5
      optional :uint64, :bytes_expected, 6
      optional :uint64, :bytes_actual, 7
      optional :uint32, :duration_ms, 8
      optional :uint32, :cellid, 9
    end

    class CCloud_ClientBeginFileUpload_Request
      optional :uint32, :appid, 1
      optional :uint32, :file_size, 2
      optional :uint32, :raw_file_size, 3
      optional :bytes, :file_sha, 4
      optional :uint64, :time_stamp, 5
      optional :string, :filename, 6
      optional :uint32, :platforms_to_sync, 7, :default => 4294967295
      optional :uint32, :cell_id, 9
      optional :bool, :can_encrypt, 10
      optional :bool, :is_shared_file, 11
    end

    class ClientCloudFileUploadBlockDetails
      class HTTPHeaders
        optional :string, :name, 1
        optional :string, :value, 2
      end

      optional :string, :url_host, 1
      optional :string, :url_path, 2
      optional :bool, :use_https, 3
      optional :int32, :http_method, 4
      repeated ::SteamCommunity::Internal::ClientCloudFileUploadBlockDetails::HTTPHeaders, :request_headers, 5
      optional :uint64, :block_offset, 6
      optional :uint32, :block_length, 7
      optional :bytes, :explicit_body_data, 8
      optional :bool, :may_parallelize, 9
    end

    class CCloud_ClientBeginFileUpload_Response
      optional :bool, :encrypt_file, 1
      repeated ::SteamCommunity::Internal::ClientCloudFileUploadBlockDetails, :block_requests, 2
    end

    class CCloud_ClientCommitFileUpload_Request
      optional :bool, :transfer_succeeded, 1
      optional :uint32, :appid, 2
      optional :bytes, :file_sha, 3
      optional :string, :filename, 4
    end

    class CCloud_ClientCommitFileUpload_Response
      optional :bool, :file_committed, 1
    end

    class CCloud_ClientFileDownload_Request
      optional :uint32, :appid, 1
      optional :string, :filename, 2
    end

    class CCloud_ClientFileDownload_Response
      class HTTPHeaders
        optional :string, :name, 1
        optional :string, :value, 2
      end

      optional :uint32, :appid, 1
      optional :uint32, :file_size, 2
      optional :uint32, :raw_file_size, 3
      optional :bytes, :sha_file, 4
      optional :uint64, :time_stamp, 5
      optional :bool, :is_explicit_delete, 6
      optional :string, :url_host, 7
      optional :string, :url_path, 8
      optional :bool, :use_https, 9
      repeated ::SteamCommunity::Internal::CCloud_ClientFileDownload_Response::HTTPHeaders, :request_headers, 10
      optional :bool, :encrypted, 11
    end

    class CCloud_ClientDeleteFile_Request
      optional :uint32, :appid, 1
      optional :string, :filename, 2
      optional :bool, :is_explicit_delete, 3
    end


    ##
    # Service Classes
    #
    class Cloud < ::Protobuf::Rpc::Service
      rpc :get_upload_server_info, ::SteamCommunity::Internal::CCloud_GetUploadServerInfo_Request, ::SteamCommunity::Internal::CCloud_GetUploadServerInfo_Response
      rpc :begin_http_upload, ::SteamCommunity::Internal::CCloud_BeginHTTPUpload_Request, ::SteamCommunity::Internal::CCloud_BeginHTTPUpload_Response
      rpc :commit_http_upload, ::SteamCommunity::Internal::CCloud_CommitHTTPUpload_Request, ::SteamCommunity::Internal::CCloud_CommitHTTPUpload_Response
      rpc :get_file_details, ::SteamCommunity::Internal::CCloud_GetFileDetails_Request, ::SteamCommunity::Internal::CCloud_GetFileDetails_Response
      rpc :enumerate_user_files, ::SteamCommunity::Internal::CCloud_EnumerateUserFiles_Request, ::SteamCommunity::Internal::CCloud_EnumerateUserFiles_Response
      rpc :delete, ::SteamCommunity::Internal::CCloud_Delete_Request, ::SteamCommunity::Internal::CCloud_Delete_Response
      rpc :get_client_encryption_key, ::SteamCommunity::Internal::CCloud_GetClientEncryptionKey_Request, ::SteamCommunity::Internal::CCloud_GetClientEncryptionKey_Response
      rpc :cdn_report, ::SteamCommunity::Internal::CCloud_CDNReport_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :external_storage_transfer_report, ::SteamCommunity::Internal::CCloud_ExternalStorageTransferReport_Notification, ::SteamCommunity::Internal::NoResponse
      rpc :client_begin_file_upload, ::SteamCommunity::Internal::CCloud_ClientBeginFileUpload_Request, ::SteamCommunity::Internal::CCloud_ClientBeginFileUpload_Response
      rpc :client_commit_file_upload, ::SteamCommunity::Internal::CCloud_ClientCommitFileUpload_Request, ::SteamCommunity::Internal::CCloud_ClientCommitFileUpload_Response
      rpc :client_file_download, ::SteamCommunity::Internal::CCloud_ClientFileDownload_Request, ::SteamCommunity::Internal::CCloud_ClientFileDownload_Response
      rpc :client_delete_file, ::SteamCommunity::Internal::CCloud_ClientDeleteFile_Request, ::SteamCommunity::Internal::CCloud_ClientDeleteFile_Response
    end

  end

end

