# frozen_string_literal: true

require 'base64'
require 'openssl'
require 'digest/sha1'
require 'nokogiri'
require 'json'

module Steam
  class MobileConfirmations
    def initialize(identity_secret, steamid, community)
      @identity_secret = identity_secret
      @steamid = steamid
      @device_id = generate_device_id(steamid)
      @community = community
    end

    def fetch
      res = @community["mobileconf/conf?#{generate_confirmation_url}"].get
      doc = Nokogiri::HTML res
      doc.css('[data-confid]').map do |el|
        selector = '.mobileconf_list_entry_description>div'
        descriptions = el.css(selector).map(&:content).join('. ')
        Confirmation.new(self,
                         @community,
                         id: el.attribute('data-confid').content.to_i,
                         key: el.attribute('data-key').content,
                         description: descriptions)
      end
    end

    # requires loading details page for each confirmation
    # https://github.com/bukson/steampy/blob/e9719c726273df2b0d703c2c6788bdda85c1e207/steampy/confirmation.py#L68
    # def confirm_single(offerid)
    #   puts "offerid: #{offerid}"
    #   fetch.find { |conf| conf.id == offerid }.accept
    # end

    private

    def generate_confirmation_url
      time = Time.now.to_i
      params = {
              p: @device_id,
              a: @steamid,
              k: generate_confirmation_key(time, 'conf'),
              t: time,
              m: 'android',
              tag: 'conf'
      }
      URI.encode_www_form(params)
    end

    def generate_confirmation_key(time, tag)
      signature = [time].pack('Q>') + tag[0..31]
      digest = OpenSSL::HMAC.digest('sha1', Base64.decode64(@identity_secret), signature)
      Base64.encode64(digest).chomp
    end

    def generate_device_id(steam_id)
      digest = Digest::SHA1.hexdigest steam_id.to_s
      "android:#{digest[0..7]}-#{digest[8..11]}-#{digest[12..15]}-#{digest[16..19]}-#{digest[20..31]}"
    end

    class Confirmation
      attr_reader :id
      def initialize(parent, community, id:, key:, description:)
        @parent = parent
        @id = id
        @key = key
        @description = description
        @community = community
      end

      def accept
        send_confirmation('allow')
      end

      def decline
        send_confirmation('cancel')
      end

      private

      def send_confirmation(operation)
        params = {
                op: operation,
                cid: @id,
                ck: @key
        }
        query_params = URI.encode_www_form(params)
        confirmation_url = @parent.send :generate_confirmation_url
        path = "mobileconf/ajaxop?#{query_params}&#{confirmation_url}"
        JSON.parse @community[path].get
      end
    end
  end
end
