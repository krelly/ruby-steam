# frozen_string_literal: true
require_relative 'two_factor.rb'
require_relative 'login.rb'

require 'http'
require 'cgi'
require 'json'
require 'awesome_print'
require 'rest-client'

module Steam
  class Bot
    attr_reader :steamid
    # @param account_name [String] your Steam account name
    # @param password [String] your Steam password
    # @param shared_secret [String]
    # @param authCode [String] your Steam Guard email code, only required if logging in with a new email auth code
    # @param api_key
    def initialize(account_name:, password:, shared_secret:, identity_secret:, api_key:, authCode: nil)
      @account_name = account_name
      @password = password
      @shared_secret = shared_secret
      @identity_secret = identity_secret

      # cookies = {
      #   sessionid: "698440498009b3a322bf08c2",
      #   steamCountry: "UA%7C1a9c38cb3f3a3935dc17708f6994197e",
      #   steamLogin: "76561198246811020%7C%7C5965F4372B9D485C04E4A18ED76C73B565EE285D",
      #   steamLoginSecure: "***REMOVED***",
      #   steamMachineAuth76561198125634572: "***REMOVED***",
      #   steamMachineAuth76561198246811020: "***REMOVED***",
      #   steamRememberLogin: "***REMOVED***",
      #   timezoneOffset: "10800,0",
      #   webTradeEligibility: "%7B%22allowed%22%3A1%2C%22allowed_at_time%22%3A0%2C%22steamguard_required_days%22%3A15%2C%22sales_this_year%22%3A2%2C%22max_sales_per_year%22%3A200%2C%22forms_requested%22%3A0%2C%22new_device_cooldown_days%22%3A7%7D",
      # }
    end

    def login
      @cookies, @steamid = Login.new(@account_name, @password, @shared_secret).login
      @community = RestClient::Resource.new(Steam::COMMUNITY_URL, cookies: @cookies)
      @confirmations = MobileConfirmations.new(@identity_secret, @steamid, @community)
    end

    def fetch_confirmations
      @confirmations.fetch
    end

    def accept_confirmation(confirmation)
      @confirmations.accept(confirmation)
    end

    def decline_confirmation(confirmation)
      @confirmations.decline(confirmation)
    end

    def notifications_count
      # https://steamcommunity.com/actions/GetNotificationCounts
    end

    def steamid32
      Steamid.to_steamid32 @steamid
    end

    def get_my_inventory
      self.class.get_inventory(@steamid)
    end

    def get_sent_offers
      res = @community['id/me/tradeoffers/sent/'].get
      Steam::Parsers::OffersParser.parse res
    end

    # @param partner_steamid [String] 64bit steamid
    def send_trade_offer(partner_steamid:, token:, items_to_give:, items_to_receive:, message:'')
      format_items = lambda do |assetid|
        {
          appid: 730,
          contextid: 2,
          amount: 1,
          assetid: assetid.to_s
        }
      end

      items_to_give.map! &format_items
      items_to_receive.map! &format_items

      tradeoffer = {
        newversion: true,
        version: 2,
        me: { assets: items_to_give, currency: [], ready: false },
        them: { assets: items_to_receive, currency: [], ready: false }
      }

      trade_offer_create_params = {
        trade_offer_access_token: token
      }

      formFields = {
        serverid: 1,
        sessionid: @cookies['sessionid'],
        partner: partner_steamid.to_s,
        tradeoffermessage: message,
        trade_offer_create_params: trade_offer_create_params.to_json,
        json_tradeoffer: tradeoffer.to_json
      }

      query = {
        partner: Steam::Steamid.to_steamid32(partner_steamid),
        token: token,
        l: 'en'
      }

      referer = "#{Steam::TRADEOFFER_URL}/new/?#{URI.encode_www_form(query)}"
      path = '/tradeoffer/new/send?l=en'
      result = JSON.parse @community[path].post(formFields, referer: referer)
      raise result['strError'] if result.key? 'strError'
      # if result['needs_mobile_confirmation']
      #   @confirmations.confirm_single(result['tradeofferid'])
      # end
      result['tradeofferid']
    end

    def cancel_offer(offer_id)
      res = @community["tradeoffer/#{offer_id}/cancel"]
            .post(sessionid: @cookies['sessionid'])
      res.parse
    end

    class << self
      def get_inventory(_steamid)
        path = 'id/me/inventory/json/730/2'
        res = JSON.parse @community[path].get
        map_by_assetid res
      end

      private

      def map_by_assetid(res)
        res['rgInventory'].each_with_object({}) do |(assetid, data), inventory|
          description = res['rgDescriptions'][data['classid'] + '_' + data['instanceid']]
          throw 'no item' if description.nil?
          inventory[assetid] = description
        end
      end
    end
  end
end
