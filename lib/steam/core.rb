require_relative 'two_factor.rb'
require_relative 'login.rb'
require 'http'
# require 'rest-client'
require 'json'
require 'awesome_print'
# require 'steam_crypto'
module Steam
  class Bot
    attr_reader :steamid
    # @param account_name [String] your Steam account name
    # @param password [String] your Steam password
    # @param shared_secret [String]
    # @param authCode [String] your Steam Guard email code, only required if logging in with a new email auth code
    # @param api_key
    # @param captcha [String] only required if you have been prompted with a CAPTCHA
    def initialize(account_name:, password:, shared_secret:, api_key:, authCode: nil, captcha: nil)
      @account_name = account_name
      @password = password
      @shared_secret = shared_secret
      @steamid = 76561198125634572
      @cookies = {
        sessionid:'615807991',
        steamLogin:'***REMOVED***',
        steamLoginSecure:'***REMOVED***'
      }

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
      @request = HTTP.cookies(@cookies)
    end

    def login
      puts Login.new(@account_name, @password, @shared_secret).login()
    end

    def notifications_count
      #https://steamcommunity.com/actions/GetNotificationCounts
    end

    def steamid32
      to_steamid32 @steamid
    end

    def to_steamid32(id)
      # lowest 32 bit of 64 bit steamid is actually a account id
      id & 0xFFFFFFFF
    end

    # @param partner_steamid [String] 64bit steamid
    def send_trade_offer(partner_steamid:, token:, items_to_give:, items_to_receive:, message:'')

      assetid_to_s = Proc.new do |item|
        item[:assetid] = item[:assetid].to_s
      end
      items_to_give.map(assetid_to_s)
      items_to_receive.map(assetid_to_s)

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
        sessionid: @cookies[:sessionid],
        partner: partner_steamid.to_s,
        tradeoffermessage: message,
        trade_offer_create_params: trade_offer_create_params.to_json,
        json_tradeoffer: tradeoffer.to_json
      }

      query = {
       partner: to_steamid32(partner_steamid),
       token: token
      }

      referer = "#{API_BASE_URL}/tradeoffer/new/?#{URI.encode_www_form(query)}";
      puts "URL: #{referer} -> sending #{formFields.ai}"
      puts @request.headers(referer: referer)
              .post(API_BASE_URL + '/tradeoffer/new/send', form: formFields)
    end

  end

end
