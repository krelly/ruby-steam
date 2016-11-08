require 'nokogiri'

module Steam
  module Parsers
    class ItemDescriptionParser
      def self.parse(item_info)
        descriptions = item_info['descriptions']
        # if descriptions['']

        # end
        descriptions.each do |description|
          case description['value']
          when /sticker_info/
            # item has stickers
            puts "has stickers"
            parse_sticker_details(description['value'])
          else
            nil
          end
        end
      end

      def self.parse_sticker_details(html)
      # <br>
      # <div id="sticker_info" name="sticker_info" title="Sticker Details"
      #   style="border: 2px solid rgb(102, 102, 102); border-radius: 6px; width=100; margin:4px; padding:8px;>
      #   <center>
      #     <img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/cologne2015/renegades_gold.a0016d185e7d8ef372fcb57aea947e247c3b0b13.png\">
      #     <img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/cologne2015/sig_yam_gold.f085a90e0d4cb8fb00cedcd19ef0ddd98c2fd4f3.png\">
      #     <img width=64 height=48 src="https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/cologne2015/titan_gold.d64452b71019be0cbd2d156c686ef2fd651728cd.png\">
      #     <img width=64 height=48 src=\ "https://steamcdn-a.akamaihd.net/apps/730/icons/econ/stickers/cologne2015/esl_gold.9c792f231d3b20c34e27102816363b0301b116dd.png\">
      #     <br>Sticker: Renegades (Gold) | Cologne 2015, yam (Gold) | Cologne 2015, Titan (Gold) | Cologne 2015, ESL (Gold) | Cologne 2015
      #   </center>
      # </div>
        info = Nokogiri::HTML(html).css('#sticker_info')
        images = info.css('img').map { |i| i.attr('src') }
        sticker_names = info.css('center>br').text
        [images, sticker_names]
      end


    end
  end
end
