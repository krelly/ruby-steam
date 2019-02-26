$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'steam'
require 'yaml'

module Config
  def self.credentials
    config = YAML.load_file("#{__dir__}/config/dimickh.config.yml")
    config.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
  end
end
