require 'mini_racer'
require 'json'

module Steam
  module Parsers
    class RecieptParser
      def self.parse(html)
        script = html.match(%r{(var oItem;[\s\S]*)</script>})
        unless script[1]
          doc = Nokogiri::HTML(html)
          message = doc.css('#mainContent .received_items_header .h1')[1].text
          # If page contains html and inline js script has no oItem variable
          # means that response malformed
          raise Error::InvalidResponse if /\d+ new items acquired/ =~ message
        end

        js = <<~JS
          var items = [];
          var UserYou;
          function BuildHover(str, item) {
            items.push(item);
          }
          function $() {
           return {
             show: function() {}
           };
          }
          #{script[1]};
          items
        JS
        cxt = MiniRacer::Context.new
        items = cxt.eval(js)
        puts items.length

        # id field is not standard,
        # CEcon_Asset says that it should be named assetid
        # details:
        # https://developer.valvesoftware.com/wiki/Steam_Web_API/IEconService
        items.map do |item|
          item[:assetid] = item.delete(:id)
          item
        end
      end
    end
  end
end
