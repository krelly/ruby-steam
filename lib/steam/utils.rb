
# module Steam
#   class Client
#     load_inventory
#     load_my_inventory
#
#   end
#
#   class User
#     def initialize(steamid)
#       #code
#     end
#     #steamid
#     #steamid32
#     vanity_to_steamid
#     set_nickname
#   end
#   class MobileConfirmations
#     confirm_all
#     confirm
#   end
#   class Offers
#     make_offer
#     cancel_offer
#     hold_duration
#     get_offers
#     get_offer
#     get_items
#     accept_offer
#     decline_offer
#     get_hold_duration
#
#
#   end
#   class Extras
#     def get_player_summaries(steamids)
#     end
#     def get_item_float(inspect_link)
#     end
#   end
#
#   def self.hi
#     puts `ls -al`
#   end
# end
# require 'net/http'
# require 'cgi'
#
#AuthenticateUser doesn't do what you think it does. It's used by the Steam client to get web session logon cookies for the user who is currently logged into the client.
# def AuthenticateUser
#   auth_url = "#{API_BASE_URL}/ISteamUserAuth/AuthenticateUser/v1"
#   @webLoginKey = ''
#   session_key = SteamCrypto.generate_session_key
#   form = {
#     steamid: @steamid,
#     sessionkey: session_key[:encrypted],
#     encrypted_loginkey: SteamCrypto.symmetricEncrypt(
#       new Buffer(this._webLoginKey),
#       session_key[:plain]
#     )}
#   result = HTTP.post(auth_url, form: form )
#
#   #   if (statusCode !== 200) {
#   #     // request a new login key first
#   #     this._steamUser.requestWebAPIAuthenticateUserNonce(function (nonce) {
#   #       this._webLoginKey = nonce.webapi_authenticate_user_nonce;
#   #       this.webLogOn(callback);
#   #     }.bind(this));
#   #     return;
#   #   }
#   #
#   #   this.sessionID = Math.floor(Math.random() * 1000000000).toString();
#   #   this.cookies = [
#   #     'sessionid=' + this.sessionID,
#   #     'steamLogin=' + body.authenticateuser.token,
#   #     'steamLoginSecure=' + body.authenticateuser.tokensecure
#   #   ];
#   puts "Logged in !"
# end
