# frozen_string_literal: true
require_relative 'two_factor.rb'
require_relative 'login.rb'

require 'cgi'
require 'json'
require 'awesome_print'
require 'rest-client'
require 'wisper'

module Steam
  class Bot
    include Logging
    include Wisper::Publisher

    attr_reader :steamid
    attr_reader :web_api
    attr_reader :cookies
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

    def login(cookies = nil, id64 = nil)
      if cookies && id64
        @cookies = cookies
        @steamid = SteamID.new(id64)
      else
        @cookies, @steamid = Login.new(@account_name, @password, @shared_secret).login
      end
      @community = RestClient::Resource.new(Steam::COMMUNITY_URL, cookies: @cookies)
      @confirmations = MobileConfirmations.new(@identity_secret, @steamid, @community)
      return @cookies, @steamid
    end

    def fetch_confirmations
      @confirmations.fetch
    end

    def notifications_count
      # https://steamcommunity.com/actions/GetNotificationCounts
    end

    def get_my_inventory
      self.class.get_inventory(@steamid)
    end

    # Get counts of pending and new trade offers
    def tradeoffers_summary
      request_time = Time.now
      summary = @web_api.get('IEconService', 'GetTradeOffersSummary', time_last_visit: @last_visit)
      @last_visit = request_time.to_i
      summary
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

    def get_recieved_items(trade_id)
      logger.debug "URL: trade/#{trade_id}/receipt/"
      begin
        retries ||= 0
        logger.debug "try ##{retries}"
        html = @community["trade/#{trade_id}/receipt/"].get
        items_info = Steam::Parsers::RecieptParser.parse html
        items_info.map{ |i| Steam::Parsers::ItemDescriptionParser.parse(i)}
      rescue Error::InvalidResponse
        sleep 1
        retry if (retries += 1) < 3
      end
    end

    # @param steamid [SteamID] user steamid which will recieve offer
    # @param token [String] tradeoffer token
    # @param items_from_me [Array<Integer>] array of item assetids that you will loose after trade
    # @param items_from_them [Array<Integer>] array of item assetids that you will get after trade
    # @param message [String] message attached to tradeoffer
    def send_trade_offer(steamid:, token:, items_from_me:, items_from_them:, message:'')
      # TODO: handling situation when offer wasnt sent/or recieved responce was incorrect,
      # TODO:     e.g.: steam respond with error/request timeouted but tradeoffer was sent
      if @steamid == steamid
        raise Error::InvalidSteamID, "Cant send offer to myself"
      end

      format_items = lambda do |assetid|
        {
          appid: 730,
          contextid: 2,
          amount: 1,
          assetid: assetid.to_s
        }
      end

      items_from_me.map! &format_items
      items_from_them.map! &format_items

      tradeoffer = {
        newversion: true,
        version: 2,
        me: {assets: items_from_me, currency: [], ready: false },
        them: {assets: items_from_them, currency: [], ready: false }
      }

      trade_offer_create_params = {
        trade_offer_access_token: token
      }

      formFields = {
        serverid: 1,
        sessionid: @cookies['sessionid'],
        partner: steamid,
        tradeoffermessage: message,
        trade_offer_create_params: trade_offer_create_params.to_json,
        json_tradeoffer: tradeoffer.to_json
      }

      query = {
        partner: steamid.as_32,
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
      def get_item_description(descriptions,classid,instanceid)
        descriptions.select {|d| d[:classid] == classid && d[:instanceid] == instanceid}
      end

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
