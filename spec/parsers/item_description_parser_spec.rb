require 'spec_helper'
describe Steam::Parsers::ItemDescriptionParser do
  it "should return array of stickers" do
    data = JSON.parse File.read('./spec/data/item_descriptions/stickers.json')
    puts Steam::Parsers::ItemDescriptionParser.parse(data)['stickers']
  end
  it "should parse reciept response" do
    items = JSON.parse File.read('./spec/data/item_descriptions/reciept.json')

    items.each {|item| p Steam::Parsers::ItemDescriptionParser.parse(item)['stickers'] }

  end
end
