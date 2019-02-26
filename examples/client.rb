require 'bundler'
Bundler.require

require_relative 'examples_helper'
credentials = Config.credentials

client = Steam::Client.new
client.on :connected do
  puts 'connected'
  # TODO, this should use the same credentials structure as Steam::Bot#new
  client.login(account_name: credentials[:account_name],
               password: credentials[:password],
               two_factor_code: Steam::TwoFactor.generate_auth_code(credentials[:shared_secret]),
               protocol_version: 65579)
end

client.on EMsg::ClientLogOnResponse do |_header, logon_responce|
  # We can use recieved user nonce to also login on web

  # @webapi_nonce = body.webapi_authenticate_user_nonce
  # Steam::Bot.web_auth(header.steamid, logon_responce.webapi_authenticate_user_nonce)
  puts "recieved #{logon_responce.inspect}"

  # Set new profile name
  client.set_persona(Enum::EPersonaState::Online, 'doesn\'t matter')

  # Tell steam that we're playing game, 570 is steam game id(or AppID)
  # check https://steamdb.info/apps for other game ids

  client.games_played(570, force:true)

  sleep 50
  puts 'disconnecting'
  client.log_off
end
client.connect
