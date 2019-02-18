lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'steam/version'


Gem::Specification.new do |s|
  s.name        = 'steam'
  s.version     = Steam::VERSION
  s.summary     = "Gem to interact with Steam, a gaming platform"
  s.description = "A simple hello world gem"
  s.authors     = ["krelly"]
  s.email       = 'itwilnotbeasy@gmail.com'
  s.files       = Dir.glob("lib/**/*")
  s.metadata['allowed_push_host'] = 'https://gems.my-company.example'
  s.required_ruby_version = '>= 2.4'

  s.add_dependency 'awesome_print'
  s.add_dependency 'bindata'
  s.add_dependency 'eventmachine'
  s.add_dependency 'faye-websocket', '~> 0.10.7'
  s.add_dependency 'json', '~> 2.0'
  s.add_dependency 'nokogiri'
  s.add_dependency 'protobuf', '3.8.2'
  s.add_dependency 'rest-client'
  s.add_dependency 'therubyracer'
  s.add_dependency 'wisper', '~> 2.0'

  s.add_development_dependency "rspec"
  s.add_development_dependency "pry"
  s.add_development_dependency "rubocop"
end
