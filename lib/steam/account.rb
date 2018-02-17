module Steam
  class Account
    def create
      raise NotImplementedError
    end

    def add_phone_number
      raise NotImplementedError
    end

    def verify_email
      raise NotImplementedError
    end

    def verify_phone
      raise NotImplementedError
    end
  end
end