module Steam
  module Error
    class InvalidPassword < StandardError; end
    class Invalid2FA < StandardError; end
    class CaptchaNeeded < StandardError; end
    class InvalidResponse < StandardError; end
    class InvalidSteamID < StandardError; end
  end
end
