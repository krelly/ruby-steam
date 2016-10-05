module Steam
  module Error
    class InvalidPassword < StandardError; end
    class CaptchaNeeded < StandardError; end
  end
end
