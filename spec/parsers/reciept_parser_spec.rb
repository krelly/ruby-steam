require 'spec_helper'
describe Steam::Parsers::OffersParser do
  let (:send_path) { './spec/data/' }

  it 'successfully_parsed' do
    doc = File.read("#{send_path}Trade Completed.html")
    res = Steam::Parsers::RecieptParser.parse(doc)
    expect(res.length).to be(2)
    # expect(hashes).to all(include(state: Steam::Tradeoffer::DECLINED))
  end
end
