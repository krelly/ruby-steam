require 'logger'

module Logging
  # This is the magical bit that gets mixed into your classes
  def logger
    Logging.logger
  end

  # Global, memoized, lazy initialized instance of a logger
  def self.logger
    @logger ||= begin
      l = Logger.new(STDOUT)
      l.datetime_format = '%Y-%m-%d %H:%M:%S'
      l.formatter = proc do |severity, datetime, progname, msg|
        "#{datetime} [#{severity}]: #{msg}\n"
      end
      l
    end
  end

  def self.logger=(logger)
    @logger = logger
  end
end
