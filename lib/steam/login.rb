require 'base64'
Dir.glob(__dir__ + '/../core_extensions/**/*.rb', &method(:require))

class Login

  def initialize(account_name, password, shared_secret)
    @account_name = account_name
    @password = password.encode(Encoding::ASCII)
    @shared_secret = shared_secret
  end

  def login
    captcha = ''
    captcha_id = '-1'
    loop do
      res = send_login_request(captcha, captcha_id)
      if res['success']
        break
      elsif res['captcha_needed']
        captcha = prompt_captcha(res['captcha_gid'])
        captcha_id = res['captcha_gid']
        redo
      elsif res['clear_password_field']
        break
      end

      ##second login
      auth_code = Steam::TwoFactor.generate_auth_code(@shared_secret)
      res = send_login_request(captcha, captcha_id, auth_code)

      if res['success']
        return res
      elsif res['captcha_needed']
        captcha = prompt_captcha(res['captcha_gid'])
        captcha_id = res['captcha_gid']
      elsif res['clear_password_field']
        break
      end
    end

  end

  private
  def send_login_request(captcha, captcha_id, auth_code = '')
    form = generate_login_form_data(captcha, captcha_id, auth_code)
    headers = {
        # ContentType: "application/x-www-form-urlencoded; charset=UTF-8",
        :'User-Agent' => "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36",
        # Host:"steamcommunity.com",
        # Origin:"https://steamcommunity.com",
        # Referer:"https://steamcommunity.com/login/home/?goto=0",
        Timeout: 50000
    }
    HTTP.headers(headers).post("#{Steam::STORE_URL}/login/dologin", form: form).parse
  end

  def generate_login_form_data(captcha = '', captcha_id = '-1', auth_code)
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
    puts "Captcha is needed:"
    puts "#{Steam::COMMUNITY_URL}/public/captcha.php?gid=#{id}"
    print "Type captcha:"
    gets.chomp
  end

  def fetch_rsa_params
    rsa_key_url = "#{Steam::COMMUNITY_URL}/login/getrsakey?username=#{@account_name}"
    res = HTTP.get(rsa_key_url).parse
    pubkey_mod = res['publickey_mod'].hex
    pubkey_exp = res['publickey_exp'].hex

    rsa_keypair = OpenSSL::PKey::RSA.construct(pubkey_mod, pubkey_exp)
    return rsa_keypair, res['timestamp']
  end

  def encrypt_password(rsa_instance)
    require 'digest/sha1'
    encoded_password = rsa_instance.public_encrypt(@password)
    Base64.strict_encode64 encoded_password
  end
end
