require_relative 'bot/core.rb'
# Dir.glob(__dir__ + '/core_extensions/**/*.rb', &method(:require))

require 'yaml'
credentials = YAML.load_file(__dir__ + '/../config/dimickh.config.yml')['login_details']
credentials = credentials.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

bot = Bot.new(credentials)

puts bot.login
