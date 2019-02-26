require_relative 'examples_helper'


bot = Steam::Bot.new(Config.credentials).login

# Get counts of pending and new trade offers
p bot.tradeoffers_summary


partner_id = Steam::SteamID.new(76561198125634472) # Change this to your friend steamid
inv = Steam::Bot.get_inventory(partner_id)

offer = bot.send_trade_offer(steamid: partner_id, token: '<TRADEOFFER TOKEN>', items_from_me: [], items_from_them: [inv.first[0].to_i], message: 'Hi, this is a gem test!')
offer

bot.fetch_confirmations.each do |confirmation|
  puts confirmation.accept
end

# pp bot.get_offers(get_sent_offers: true)
# pp bot.offer_details(1626158837)
# pp bot.get_items(377568233786790239)

# class_info(730, ['1378925347','1250335113'], ['8003642358','8003642250'])

# res = bot.get_recieved_items(249219941388995886)

# res = bot.get_offers(get_sent_offers: true, historical_only: true)

# cancel sent offer by trade_id
# bot.cancel_offer(1602220261)
