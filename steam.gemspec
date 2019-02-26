lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'steam/version'

Gem::Specification.new do |s|
  s.name        = 'steam'
  s.version     = Steam::VERSION
  s.summary     = 'Gem to interact with Steam, a gaming platform'
  s.description = 'A simple hello world gem'
  s.authors     = ['krelly']
  s.email       = 'itwilnotbeasy@gmail.com'
  s.files       = Dir.glob('lib/**/*')
  s.metadata['allowed_push_host'] = 'https://gems.my-company.example'
  s.required_ruby_version = '>= 2.4'

  s.add_dependency 'awesome_print', '~>1.8' # TODO: use it to get colorful logs
  s.add_dependency 'bindata', '~> 2.4'
  s.add_dependency 'eventmachine', '~> 1.2'
  s.add_dependency 'faye-websocket', '~> 0.10.7'
  s.add_dependency 'json', '~> 2.0'
  s.add_dependency 'nokogiri', '~> 1.8'
  s.add_dependency 'protobuf', '3.8.2'
  s.add_dependency 'rest-client', '~> 2.0'
  s.add_dependency 'therubyracer', '0.12.3'
  s.add_dependency 'wisper', '~> 2.0'

  s.add_development_dependency 'pry'
  s.add_development_dependency 'rspec', '~> 3.7'
  s.add_development_dependency 'rubocop', '0.63.1'
end
