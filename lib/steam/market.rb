require 'date'

module Steam
  class Market
    def initialize(cookies:, currency: Currency::USD, appid: 730)
      @currency = currency
      @appid = appid
      @country = 'US'
      @market = RestClient::Resource.new("#{Steam::COMMUNITY_URL}/market", cookies: cookies)
    end

    def price_overview(item_name)
      get('priceoverview', market_hash_name: item_name)
    end

    def price_history(item_name, period = :daily)
      res = get('pricehistory', market_hash_name: item_name)
      prices = res['prices'].map do |(date, avg_price, volume)|
        {
          # "Feb 25 2017 09: +0", time zone (+0) is always zero ????
          date: DateTime.strptime(date, '%b %d %Y %H'),
          price: avg_price,
          volume: volume.to_i
        }
      end

      if period == :daily
        prices.group_by { |e| e[:date].to_date }.map { |date, sales| weighted_mean(sales).merge(date: date) }
      else
        weighted_mean(prices)
      end
    end

    def search; end

    def get(url, params = {})
      default_params = {
        country: @country,
        currency: @currency,
        appid: @appid
      }
      res = JSON.parse @market[url].get(params: default_params.merge(params))
      raise InvalidResponse unless res['success']

      res
    end

    private

    def weighted_mean(prices)
      a = 0
      b = 0
      prices.each do |e|
        a += e[:price] * e[:volume]
        b += e[:volume]
      end
      { volume: b, price: a / b }
    end
  end
end
