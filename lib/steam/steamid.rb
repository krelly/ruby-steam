module Steam
  # A SteamID is a unique identifier used to identify a Steam account.
  # It is also used to refer to a user's Steam Community profile page.
  class SteamID
    # TODO: this is actually STEAM_0:0:0, and should be named accordingly
    STEAMID_CONVERSION_BASE = 76561197960265728

    # TODO: constructor for STEAM_X:Y:Z, where
    #   X represents the "Universe" the steam account belongs to.
    #   Y is part of the ID number for the account. Y is either 0 or 1.
    #   Z is the ID number for the account (the "account number").

    def initialize(steamid64)
      @steamid64 = Integer(steamid64)
    end

    def self.from_vanity_url(web_api, vanity_url)
      new(web_api.get('ISteamUser', 'ResolveVanityURL', vanityurl: vanity_url)[:steamid])
    end

    def self.from_steamid32(steamid32)
      new(to_steamid64(steamid32))
    end

    def as_64
      @steamid64
    end

    def as_32
      # lowest 32 bit of 64 bit steamid is a account id
      @steamid64 & 0xFFFFFFFF
    end

    def to_s
      as_64.to_s
    end

    def ==(other)
      @steamid64 == other.as_64
    end

    def self.to_steamid64(id32)
      id32 + STEAMID_CONVERSION_BASE
    end

    private_class_method :to_steamid64
  end
end
