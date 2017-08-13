module Steam
  class SteamID
    STEAMID_CONVERSION_BASE = 76561197960265728

    def initialize(steamid64)
      @steamid64 = steamid64
    end

    def self.from_vanity_url(web_api, vanity_url)
      self.new(web_api.get('ISteamUser', 'ResolveVanityURL', vanityurl: vanity_url)[:steamid])
    end

    def self.from_steamid32(steamid32)
      self.new(to_steamid64(steamid32))
    end

    def as_64
      @steamid64
    end

    def as_32
      # lowest 32 bit of 64 bit steamid is a account id
      @steamid64 & 0xFFFFFFFF
    end

    def to_s
      as_64
    end
  end
end
