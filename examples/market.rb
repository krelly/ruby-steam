require_relative 'examples_helper'
require 'yaml'

credentials = YAML.load_file("#{__dir__}/config/dimickh.config.yml")

bot_params = credentials['login_details'].each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

bot = Steam::Bot.new(bot_params).login


market = Steam::Market.new(cookies: bot.cookies)
puts market.price_history('AWP | Phobos (Minimal Wear)')
puts market.price_overview('AWP | Phobos (Minimal Wear)')

