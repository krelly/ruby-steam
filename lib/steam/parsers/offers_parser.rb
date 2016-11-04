require 'nokogiri'

module Steam
  module Parsers
    class OffersParser
      # @param [String] doc html returned by steamid
      # @param [Hash] inventory your steam inventory, if passed returned
      #               items will have their assetid set
      # @return [Hash]
      #   * :id [Integer] tradeoffer id, NOT tradeid!
      #   * :state [Steam::Tradeoffer] offer state
      #   * :items_recieved [Steam::Tradeoffer] offer state
      #   * :items_send [Steam::Tradeoffer] offer state
      # IMPORTANT: WORKS ONLY FOR SEND OFFERS, NOT RECIEVED
      def self.parse(res, inventory = nil)
        doc = Nokogiri::HTML(res)
        doc.css('.profile_leftcol .tradeoffer').map do |el|
          offer = {}
          offer[:id] = el.attribute('id')
                         .text.match(/tradeofferid_(\d+)/)[1].to_i
          offer[:state] = parse_offer_state(el)
          items_recieved_html = el.css('.tradeoffer_items.primary .trade_item')
          items_send_html = el.css('.tradeoffer_items.secondary .trade_item')
          offer[:items_recieved] = parse_items_block(items_recieved_html, inventory)
          offer[:items_send] = parse_items_block(items_send_html, inventory)
          offer[:steamid_other] = get_partner_id(el)
          offer
        end
      end

      def self.parse_offer_state(el)
        if el.at_css('.tradeoffer_items_ctn.inactive')
          case el.css('.tradeoffer_items_banner').text
          when /Trade Accepted/
            Steam::Tradeoffer::ACCEPTED
          when /Awaiting Mobile Confirmation/
            Steam::Tradeoffer::CREATED_NEEDS_CONFIRMATION
          when /Trade Declined/
            Steam::Tradeoffer::DECLINED
          when /Counter Offer Made/
            Steam::Tradeoffer::COUNTERED
          end
        else
          Steam::Tradeoffer::ACTIVE
        end
      end

      def self.get_partner_id(el)
        steamid32 = el.css('.tradeoffer_items.secondary .tradeoffer_avatar')
                      .attr('data-miniprofile').text.to_i
        Steamid.to_steamid64(steamid32)
      end
      # def self.item_info()
      #   "itemhover/730/2/#{offer[:id]}?content_only=1&omit_owner=1&l=english&o=76561198246811020"
      # end
      # def parse_item_hover(res)
      #   #code
      # end

      def self.parse_items_block(el, inventory)
        el.map do |item|
          str = item.attribute('data-economy-item').text
          /\d+\/(?<classid>\d+)\/?(?<instanceid>\d+)?/ =~ str
          # sometimes string has format classinfo/730/1367191561
          # meaning that instanceid = 0, it's totally ok behaviour
          instanceid ||= 0
          if inventory
            {
              classid: classid,
              instanceid: instanceid,
              assetid: get_assetid(classid, instanceid, rg_inventory)
            }
          else
            {
              classid: classid,
              instanceid: instanceid
            }
          end
        end
      end

      # Matches classid, instanceid pair with assetid
      def self.get_assetid(classid, instanceid, rg_inventory)
        rg_inventory.select do |_, h|
          h['classid'] == classid && h['instanceid'] == instanceid
        end.keys
      end

      private_class_method :parse_offer_state, :parse_items_block, :get_assetid
    end
  end
end
