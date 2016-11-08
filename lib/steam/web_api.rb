require 'json'
require 'rest-client'

module Steam
  class WebApi
    def initialize(api_key)
      @api_key = api_key
    end

    def post(*args, **params)
      query_api(*args, params.merge(method: :post))
    end

    def get(*args, **params)
      query_api(*args, params.merge(method: :get))
    end

    private

    def query_api(interface, api_method, method:, version: 1, **params)
      params[:key] = @api_key
      # Steam Web API interprets boolean as int's true => 1 false =>
      params.each do |k, v|
        if v == true
          params[k] = 1
        elsif v == false
          params[k] = 0
        end
      end
      url = "#{Steam::API_BASE_URL}/#{interface}/#{api_method}/v#{version}/"
      res = RestClient::Request.execute(method: method, url: url,
                                        headers: { params: params })
      parsed = JSON.parse(res, symbolize_names: true)[:response]
      # puts "query_api #{parsed}"
      if params.key? :return_key
        parsed[params[:return_key]]
      else
        parsed
      end
    end
  end
end
