module Steam
  module Steamid
    STEAMID_CONVERSION_BASE = 76_561_197_960_265_728
    def self.to_steamid64(id32)
      id32 + STEAMID_CONVERSION_BASE
    end

    def self.to_steamid32(id64)
      # lowest 32 bit of 64 bit steamid is actually a account id
      id64 & 0xFFFFFFFF
    end
  end
end
