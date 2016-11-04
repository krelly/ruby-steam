require 'spec_helper'
describe Steam::Parsers::OffersParser do
  let (:send_path) { './spec/data/offers_html/send/' }

  it 'declined' do
    doc = File.read("#{send_path}_declined.html")
    hashes = Steam::Parsers::OffersParser.parse(doc)
    expect(hashes).to all(include(state: Steam::Tradeoffer::DECLINED))
  end

  it 'accepted' do
    doc = File.read("#{send_path}mutual_accepted.html")
    hashes = Steam::Parsers::OffersParser.parse(doc)
    p hashes
    expect(hashes).to all(include(state: Steam::Tradeoffer::ACCEPTED))
  end

  it 'assetid should be = 0' do
    #
  end

  it 'needs mobile confirmation' do
    doc = File.read("#{send_path}_needs_mobile_confirmation.html")
    hashes = Steam::Parsers::OffersParser.parse(doc)
    expect(hashes).to all(include(state: Steam::Tradeoffer::CREATED_NEEDS_CONFIRMATION))
  end
end

describe Steam::WebApi do
  let (:api) { Steam::WebApi.new('***REMOVED***') }
  it 'should return responce' do
    puts api.get('IEconService', 'GetTradeOffer', tradeofferid: 1622693323)
  end
end
