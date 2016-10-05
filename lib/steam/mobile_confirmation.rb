require 'base64'
require 'openssl'
require 'digest/sha1'
require 'http'
require 'nokogiri'


module Steam
  class MobileConfirmation
    def initialize(identity_secret, steamid, cookies)
      @identity_secret = identity_secret
      @steamid = steamid
      @device_id = generate_device_id(steamid)
      @request = HTTP.cookies(cookies)
    end

    def fetch
      url = "#{Steam::COMMUNITY_URL}/mobileconf/conf?#{generate_confirmations_url}"
      doc = Nokogiri::HTML(@request.get(url).to_s)

      confirmations = doc.css('[data-confid]').map do |el|
        descriptions = el.css('.mobileconf_list_entry_description>div').map(&:content)
        {
          id:           el.attribute('data-confid').content,
          key:          el.attribute('data-key').content,
          cancel:       el.attribute('data-cancel').content,
          accept:       el.attribute('data-accept').content,
          descriptions: descriptions
        }
      end
    end

    def accept(confirmation)
      send_confirmation(confirmation, 'allow')
    end

    def decline(confirmation)
      send_confirmation(confirmation, 'cancel')
    end

    private
    def generate_confirmations_url
      time = Time.now.to_i
      params = {
        p: @device_id,
        a: @steamid,
        k: generate_confirmation_key(time, 'conf'),
        t: time,
        m: 'android',
        tag: 'conf'
      }
      query_params = URI.encode_www_form(params)

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


    def send_confirmation(confirmation, operation)
      params = {
        op: operation,
        cid: confirmation[:id],
        ck: confirmation[:key]
      }
      query_params = URI.encode_www_form(params)
      url = "#{Steam::COMMUNITY_URL}/mobileconf/ajaxop?#{query_params}&#{generate_confirmations_url}"
      @request.get(url).parse
    end

  end
end
