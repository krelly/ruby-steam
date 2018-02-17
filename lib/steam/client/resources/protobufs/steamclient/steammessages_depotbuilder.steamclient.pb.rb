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
    class CContentBuilder_InitDepotBuild_Request < ::Protobuf::Message; end
    class CContentBuilder_InitDepotBuild_Response < ::Protobuf::Message; end
    class CContentBuilder_StartDepotUpload_Request < ::Protobuf::Message; end
    class CContentBuilder_StartDepotUpload_Response < ::Protobuf::Message; end
    class CContentBuilder_GetMissingDepotChunks_Request < ::Protobuf::Message; end
    class CContentBuilder_GetMissingDepotChunks_Response < ::Protobuf::Message
      class Chunks < ::Protobuf::Message; end

    end

    class CContentBuilder_FinishDepotUpload_Request < ::Protobuf::Message; end
    class CContentBuilder_FinishDepotUpload_Response < ::Protobuf::Message; end
    class CContentBuilder_CommitAppBuild_Request < ::Protobuf::Message
      class Depots < ::Protobuf::Message; end

    end

    class CContentBuilder_CommitAppBuild_Response < ::Protobuf::Message; end
    class CContentBuilder_SignInstallScript_Request < ::Protobuf::Message; end
    class CContentBuilder_SignInstallScript_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CContentBuilder_InitDepotBuild_Request
      optional :uint32, :appid, 1
      optional :uint32, :depotid, 2
      optional :uint64, :workshop_itemid, 3
      optional :bool, :for_local_cs, 4
    end

    class CContentBuilder_InitDepotBuild_Response
      optional :uint64, :baseline_manifestid, 1
      optional :uint32, :chunk_size, 2
      optional :bytes, :aes_key, 3
      optional :bytes, :rsa_key, 4
      optional :string, :url_host, 5
    end

    class CContentBuilder_StartDepotUpload_Request
      optional :uint32, :appid, 1
      optional :uint32, :depotid, 2
      optional :uint64, :workshop_itemid, 3
      optional :bool, :for_local_cs, 4
      optional :uint64, :baseline_manifestid, 5
      optional :uint32, :manifest_size, 6
    end

    class CContentBuilder_StartDepotUpload_Response
      optional :uint64, :depot_build_handle, 1
    end

    class CContentBuilder_GetMissingDepotChunks_Request
      optional :uint32, :appid, 1
      optional :uint64, :depot_build_handle, 2
    end

    class CContentBuilder_GetMissingDepotChunks_Response
      class Chunks
        optional :bytes, :sha, 1
      end

      repeated ::SteamCommunity::Internal::CContentBuilder_GetMissingDepotChunks_Response::Chunks, :missing_chunks, 1
      optional :uint32, :total_missing_chunks, 2
      optional :uint64, :total_missing_bytes, 3
    end

    class CContentBuilder_FinishDepotUpload_Request
      optional :uint32, :appid, 1
      optional :uint64, :depot_build_handle, 2
    end

    class CContentBuilder_FinishDepotUpload_Response
      optional :uint64, :manifestid, 1
      optional :bool, :prev_reused, 2
    end

    class CContentBuilder_CommitAppBuild_Request
      class Depots
        optional :uint32, :depotid, 1
        optional :uint64, :manifestid, 2
      end

      optional :uint32, :appid, 1
      repeated ::SteamCommunity::Internal::CContentBuilder_CommitAppBuild_Request::Depots, :depot_manifests, 2
      optional :string, :build_notes, 4
      optional :string, :live_branch, 5
    end

    class CContentBuilder_CommitAppBuild_Response
      optional :uint32, :buildid, 1
    end

    class CContentBuilder_SignInstallScript_Request
      optional :uint32, :appid, 1
      optional :uint32, :depotid, 2
      optional :string, :install_script, 3
    end

    class CContentBuilder_SignInstallScript_Response
      optional :string, :signed_install_script, 1
    end


    ##
    # Service Classes
    #
    class ContentBuilder < ::Protobuf::Rpc::Service
      rpc :init_depot_build, ::SteamCommunity::Internal::CContentBuilder_InitDepotBuild_Request, ::SteamCommunity::Internal::CContentBuilder_InitDepotBuild_Response
      rpc :start_depot_upload, ::SteamCommunity::Internal::CContentBuilder_StartDepotUpload_Request, ::SteamCommunity::Internal::CContentBuilder_StartDepotUpload_Response
      rpc :get_missing_depot_chunks, ::SteamCommunity::Internal::CContentBuilder_GetMissingDepotChunks_Request, ::SteamCommunity::Internal::CContentBuilder_GetMissingDepotChunks_Response
      rpc :finish_depot_upload, ::SteamCommunity::Internal::CContentBuilder_FinishDepotUpload_Request, ::SteamCommunity::Internal::CContentBuilder_FinishDepotUpload_Response
      rpc :commit_app_build, ::SteamCommunity::Internal::CContentBuilder_CommitAppBuild_Request, ::SteamCommunity::Internal::CContentBuilder_CommitAppBuild_Response
      rpc :sign_install_script, ::SteamCommunity::Internal::CContentBuilder_SignInstallScript_Request, ::SteamCommunity::Internal::CContentBuilder_SignInstallScript_Response
    end

  end

end

