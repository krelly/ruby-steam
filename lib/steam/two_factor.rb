require 'openssl'
require 'base64'

module Steam
  class TwoFactor
    CHARS = '23456789BCDFGHJKMNPQRTVWXY'
    class << self
      def generate_auth_code(shared_secret)
        time = Time.now.to_i
        signature = [time / 30].pack('Q>')
        digest = OpenSSL::HMAC.digest('sha1', Base64.decode64(shared_secret), signature)
        digest = digest.unpack('C*')

        start = digest[19] & 0x0f
        digest = digest[start, 4]

        full_code = digest.pack('C*').unpack('L>').first & 0x7fffffff

        5.times.map do
          char = CHARS[full_code % CHARS.size]
          full_code /= CHARS.size
          char
        end.join
      end
    end
  end
end
