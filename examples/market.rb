require_relative 'examples_helper'

bot = Steam::Bot.new(Config.credentials).login

market = Steam::Market.new(cookies: bot.cookies)
puts market.price_history('AWP | Phobos (Minimal Wear)')
puts market.price_overview('AWP | Phobos (Minimal Wear)')
