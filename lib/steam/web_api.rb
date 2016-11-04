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
      url = "#{Steam::API_BASE_URL}/#{interface}/#{api_method}/v#{version}/"
      puts url
      res = RestClient::Request.execute(method: method, url: url,
                                        headers: { params: params })

      JSON.parse res
    end
  end
end
