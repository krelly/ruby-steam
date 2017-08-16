require 'base64'
require 'json'

Dir.glob(__dir__ + '/../core_extensions/**/*.rb', &method(:require))

module Steam
  class Login

    def initialize(account_name, password, shared_secret)
      @account_name = account_name
      @password = password.encode(Encoding::ASCII)
      @shared_secret = shared_secret
    end

    def login
      captcha = ''
      captcha_id = '-1'
      begin
        res, cookies = send_login_request(captcha, captcha_id)
        cookies = perform_redirects(res, cookies)
        puts "result cookies"
        logger.debug cookies
        id = res['transfer_parameters']['steamid']
        return cookies, Steam::SteamID.new(id)
      rescue Steam::Error::CaptchaNeeded
        captcha = prompt_captcha(res['captcha_gid'])
        captcha_id = res['captcha_gid']
        retry
      end
    end

    private

    def perform_redirects(res, cookies)
      params = res['transfer_parameters']
      results = res['transfer_urls'].map do |url|
        RestClient.post(url, params, cookies: cookies).cookies
      end
      results.reduce(:merge)
    end

    def send_login_request(captcha, captcha_id)
      headers = {
              'User-Agent' => 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36'
      }

      # First send request without two-factor parameter
      form = generate_login_form_data(captcha, captcha_id)
      res = RestClient.post(Steam::COMMUNITY_URL + '/login/dologin', form)

      # Now generate auth code and send request to '/login' second time
      #  ¯\_(ツ)_/¯ Basic steam
      auth_code = Steam::TwoFactor.generate_auth_code(@shared_secret)
      form = generate_login_form_data(captcha, captcha_id, auth_code)
      res = RestClient.post(Steam::COMMUNITY_URL + '/login/dologin', form, cookies: res.cookies)

      cookies = res.cookies
      res = JSON.parse(res)

      if res['clear_password_field']
        raise Steam::Error::InvalidPassword
      elsif res['captcha_needed']
        raise Steam::Error::CaptchaNeeded
      elsif !res['success']
        raise res['message']
      end

      [res, cookies]
    end

    def generate_login_form_data(captcha = '', captcha_id = '-1', auth_code = '')
      require 'date'
      keypair, timestamp = fetch_rsa_params
      {
              password: encrypt_password(keypair),
              username: @account_name,
              twofactorcode: auth_code,
              emailauth: '',
              loginfriendlyname: 'defaultSteamBotMachine',
              captchagid: captcha_id,
              captcha_text: captcha,
              emailsteamid: '',
              rsatimestamp: timestamp,
              remember_login: 'false',
              donotcache: DateTime.now.strftime('%Q') # Unix time in ms
      }
    end

    def prompt_captcha(id)
      puts 'Captcha is needed:'
      puts "#{Steam::COMMUNITY_URL}/public/captcha.php?gid=#{id}"
      print 'Type captcha:'
      gets.chomp
    end

    def fetch_rsa_params
      get_rsa_url = "#{Steam::COMMUNITY_URL}/login/getrsakey?username=#{@account_name}"
      res = JSON.parse(RestClient.get(get_rsa_url))
      # res = HTTP.get(get_rsa_url).parse
      pubkey_mod = res['publickey_mod'].hex
      pubkey_exp = res['publickey_exp'].hex

      rsa_keypair = OpenSSL::PKey::RSA.construct(pubkey_mod, pubkey_exp)
      [rsa_keypair, res['timestamp']]
    end

    def encrypt_password(rsa_instance)
      encoded_password = rsa_instance.public_encrypt(@password)
      Base64.strict_encode64 encoded_password
    end
  end
end