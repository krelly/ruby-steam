require 'json'
require 'rest-client'

module Steam
  class WebApi
    def initialize(api_key)
      @api_key = api_key
    end

    ## Generic methods
    def post(*args, **params)
      query_api(*args, params.merge(http_method: :post))
    end

    def get(*args, **params)
      query_api(*args, params.merge(http_method: :get))
    end

    ## Methods that require additional response processing

    # @param class_instance_pair [Array] array of classid instance pairs:
    # "classid": "1378925347", "instanceid": "188530170" => [1378925347,188530170]
    def class_info(app_id, class_instance_pair)
      # if only one class_instanceid pair was passed wrap it with array
      class_instance_pair = [class_instance_pair] unless class_instance_pair[0].instance_of? Array
      # retarded steam devs doesn't know how to pass array in query, so they invented their own way
      # thats how we should pass classid array (classid = [195151,16891096])
      # class_count=2&classid0=195151&classid1=16891096
      params = class_instance_pair.each_with_object({}).with_index do |((classid, instanceid), obj), i|
        obj[:"classid#{i}"] = classid
        obj[:"instanceid#{i}"] = instanceid
      end
      get('ISteamEconomy', 'GetAssetClassInfo', params.merge(
          appid: app_id,
          class_count: class_instance_pair.size,
          return_key: :result
      ))
    end

    private

    def query_api(interface, api_method, http_method:, version: 1, **params)
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
      res = RestClient::Request.execute(method: http_method, url: url,
                                        headers: {params: params})
      parsed = JSON.parse(res, symbolize_names: true)
      parsed = parsed[:response] if parsed.key? :response
      # puts "query_api #{parsed}"
      if params.key? :return_key
        parsed[params[:return_key]]
      else
        parsed
      end
    end
  end
end

# api = Steam::WebApi.new '***REMOVED***'
# res = api.class_info('730', ['1250335113','188530170'])
# res