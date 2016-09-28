module OpenSSL
  module PKey
    class RSA
      def self.construct(n, e)
        a = self.new   # self.new(64) for ruby < 1.8.2
        a.n = n        # converted to OpenSSL::BN automatically
        a.e = e
        a
      end
    end
  end
end
