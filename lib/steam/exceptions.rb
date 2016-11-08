module Steam
  module Error
    class InvalidPassword < StandardError; end
    class CaptchaNeeded < StandardError; end
    class InvalidResponse < StandardError; end
  end
end
