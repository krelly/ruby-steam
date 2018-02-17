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
    class ContentManifestPayload < ::Protobuf::Message
      class FileMapping < ::Protobuf::Message
        class ChunkData < ::Protobuf::Message; end

      end


    end

    class ContentManifestMetadata < ::Protobuf::Message; end
    class ContentManifestSignature < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class ContentManifestPayload
      class FileMapping
        class ChunkData
          optional :bytes, :sha, 1
          optional :fixed32, :crc, 2
          optional :uint64, :offset, 3
          optional :uint32, :cb_original, 4
          optional :uint32, :cb_compressed, 5
        end

        optional :string, :filename, 1
        optional :uint64, :size, 2
        optional :uint32, :flags, 3
        optional :bytes, :sha_filename, 4
        optional :bytes, :sha_content, 5
        repeated ::SteamCommunity::Internal::ContentManifestPayload::FileMapping::ChunkData, :chunks, 6
        optional :string, :linktarget, 7
      end

      repeated ::SteamCommunity::Internal::ContentManifestPayload::FileMapping, :mappings, 1
    end

    class ContentManifestMetadata
      optional :uint32, :depot_id, 1
      optional :uint64, :gid_manifest, 2
      optional :uint32, :creation_time, 3
      optional :bool, :filenames_encrypted, 4
      optional :uint64, :cb_disk_original, 5
      optional :uint64, :cb_disk_compressed, 6
      optional :uint32, :unique_chunks, 7
      optional :uint32, :crc_encrypted, 8
      optional :uint32, :crc_clear, 9
    end

    class ContentManifestSignature
      optional :bytes, :signature, 1
    end

  end

end

