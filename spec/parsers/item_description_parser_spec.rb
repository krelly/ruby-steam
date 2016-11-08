require 'spec_helper'
describe Steam::Parsers::ItemDescriptionParser do
  it "should return array of stickers" do
    data = JSON.parse File.read('./spec/data/item_descriptions/stickers.json')
    puts Steam::Parsers::ItemDescriptionParser.parse data
  end
end
