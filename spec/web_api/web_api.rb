require 'spec_helper'

describe Steam::WebApi do
  let (:api) { Steam::WebApi.new('***REMOVED***') }
  it 'should return responce' do
    puts api.get('IEconService', 'GetTradeOffer', tradeofferid: 1622693323)
  end
end
