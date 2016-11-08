# frozen_string_literal: true
require_relative 'two_factor.rb'
require_relative 'login.rb'

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
      @web_api = Steam::WebApi.new(api_key)
    end

    def login(cookies = nil, steamid = nil)
      if cookies && steamid
        @cookies = cookies
        @steamid = steamid
      else
        @cookies, @steamid = Login.new(@account_name, @password, @shared_secret).login
      end
      @community = RestClient::Resource.new(Steam::COMMUNITY_URL, cookies: @cookies)
      @confirmations = MobileConfirmations.new(@identity_secret, @steamid, @community)
      puts @cookies, @steamid
    end

    def fetch_confirmations
      @confirmations.fetch
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

    # @param [Hash] params the options passed to steam
    # @option params [Boolean] :get_sent_offers	get list of sent offers.
    # @option params [Boolean] :get_received_offers get list of received offers.
    # @option params [Boolean]:get_descriptions If set, the item display data
    #  for the items included in the returned trade offers
    #  will also be returned.
    # @option params [String] :language The language to use when loading item
    #  display data.
    # @option params [Boolean] :active_only	get only offers which are still
    #  active, or offers that have changed in state since the
    #  time_historical_cutoff
    # @option params [Boolean] :historical_only	get only offers which are
    #  not active.
    # @option params [Numeric]:time_historical_cutoff	When active_only is set,
    #  offers updated since this time will also be returned
    def get_offers(params = {})
      @web_api.get('IEconService', 'GetTradeOffers', params)
    end

    def offer_details(tradeofferid)
      @web_api.get('IEconService', 'GetTradeOffer',
                   tradeofferid: tradeofferid, return_key: :offer)
    end

    def get_items(trade_id)
      puts "URL: trade/#{trade_id}/receipt/"
      begin
        retries ||= 0
        puts "try ##{retries}"
        html = @community["trade/#{trade_id}/receipt/"].get
        Steam::Parsers::RecieptParser.parse html
      rescue Error::InvalidResponse
        sleep 1
        retry if (retries += 1) < 3
      end
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
      def get_inventory(id)
        url = "#{Steam::COMMUNITY_URL}/profiles/#{id}/inventory/json/730/2"
        res = JSON.parse RestClient.get(url)
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
