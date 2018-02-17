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
    class CInventory_GetInventory_Request < ::Protobuf::Message; end
    class CInventory_Response < ::Protobuf::Message; end
    class CInventory_ExchangeItem_Request < ::Protobuf::Message; end
    class CInventory_AddItem_Request < ::Protobuf::Message; end
    class CInventory_SafeModifyItem_Request < ::Protobuf::Message; end
    class CInventory_ConsumePlaytime_Request < ::Protobuf::Message; end
    class CInventory_GetItemDefs_Request < ::Protobuf::Message; end
    class CInventory_ConsumeItem_Request < ::Protobuf::Message; end
    class CInventory_DevSetNextDrop_Request < ::Protobuf::Message; end
    class CInventory_SplitItemStack_Request < ::Protobuf::Message; end
    class CInventory_CombineItemStacks_Request < ::Protobuf::Message; end
    class CInventory_GetItemDefMeta_Request < ::Protobuf::Message; end
    class CInventory_GetItemDefMeta_Response < ::Protobuf::Message; end


    ##
    # Message Fields
    #
    class CInventory_GetInventory_Request
      optional :uint32, :appid, 1
      optional :uint64, :steamid, 2
    end

    class CInventory_Response
      optional :string, :etag, 1
      repeated :uint64, :removeditemids, 2
      optional :string, :item_json, 3
      optional :string, :itemdef_json, 4
      optional :bytes, :ticket, 5
    end

    class CInventory_ExchangeItem_Request
      optional :uint32, :appid, 1
      optional :uint64, :steamid, 2
      repeated :uint64, :materialsitemid, 3
      repeated :uint32, :materialsquantity, 4
      optional :uint64, :outputitemdefid, 5
    end

    class CInventory_AddItem_Request
      optional :uint32, :appid, 1
      repeated :uint64, :itemdefid, 2
      repeated :string, :itempropsjson, 3
      optional :uint64, :steamid, 4
      optional :bool, :notify, 5
    end

    class CInventory_SafeModifyItem_Request
      optional :uint32, :appid, 1
      optional :uint64, :acctid, 2
      optional :uint64, :itemid, 3
      optional :string, :itempropsjson, 4
    end

    class CInventory_ConsumePlaytime_Request
      optional :uint32, :appid, 1
      optional :uint64, :itemdefid, 2
    end

    class CInventory_GetItemDefs_Request
      optional :uint32, :appid, 1
      optional :string, :modifiedsince, 2
      repeated :uint64, :itemdefids, 4
      repeated :uint64, :workshopids, 5
      optional :uint32, :cache_max_age_seconds, 7, :default => 0
    end

    class CInventory_ConsumeItem_Request
      optional :uint32, :appid, 1
      optional :uint64, :itemid, 2
      optional :uint32, :quantity, 3
      optional :string, :timestamp, 4
      optional :uint64, :steamid, 5
    end

    class CInventory_DevSetNextDrop_Request
      optional :uint32, :appid, 1
      optional :uint64, :itemdefid, 2
      optional :string, :droptime, 3
    end

    class CInventory_SplitItemStack_Request
      optional :uint32, :appid, 1
      optional :uint64, :itemid, 2
      optional :uint32, :quantity, 3
      optional :string, :timestamp, 4
    end

    class CInventory_CombineItemStacks_Request
      optional :uint32, :appid, 1
      optional :uint64, :fromitemid, 2
      optional :uint64, :destitemid, 3
      optional :uint32, :quantity, 4
      optional :string, :fromtimestamp, 5
      optional :string, :desttimestamp, 6
    end

    class CInventory_GetItemDefMeta_Request
      optional :uint32, :appid, 1
    end

    class CInventory_GetItemDefMeta_Response
      optional :uint32, :modified, 1
      optional :string, :digest, 2
    end


    ##
    # Service Classes
    #
    class Inventory < ::Protobuf::Rpc::Service
      rpc :get_inventory, ::SteamCommunity::Internal::CInventory_GetInventory_Request, ::SteamCommunity::Internal::CInventory_Response
      rpc :exchange_item, ::SteamCommunity::Internal::CInventory_ExchangeItem_Request, ::SteamCommunity::Internal::CInventory_Response
      rpc :add_promo_item, ::SteamCommunity::Internal::CInventory_AddItem_Request, ::SteamCommunity::Internal::CInventory_Response
      rpc :safe_modify_item, ::SteamCommunity::Internal::CInventory_SafeModifyItem_Request, ::SteamCommunity::Internal::CInventory_Response
      rpc :consume_playtime, ::SteamCommunity::Internal::CInventory_ConsumePlaytime_Request, ::SteamCommunity::Internal::CInventory_Response
      rpc :get_item_defs, ::SteamCommunity::Internal::CInventory_GetItemDefs_Request, ::SteamCommunity::Internal::CInventory_Response
      rpc :consume_item, ::SteamCommunity::Internal::CInventory_ConsumeItem_Request, ::SteamCommunity::Internal::CInventory_Response
      rpc :dev_generate_item, ::SteamCommunity::Internal::CInventory_AddItem_Request, ::SteamCommunity::Internal::CInventory_Response
      rpc :dev_set_next_drop, ::SteamCommunity::Internal::CInventory_DevSetNextDrop_Request, ::SteamCommunity::Internal::CInventory_Response
      rpc :split_item_stack, ::SteamCommunity::Internal::CInventory_SplitItemStack_Request, ::SteamCommunity::Internal::CInventory_Response
      rpc :combine_item_stacks, ::SteamCommunity::Internal::CInventory_CombineItemStacks_Request, ::SteamCommunity::Internal::CInventory_Response
      rpc :get_item_def_meta, ::SteamCommunity::Internal::CInventory_GetItemDefMeta_Request, ::SteamCommunity::Internal::CInventory_GetItemDefMeta_Response
    end

  end

end

