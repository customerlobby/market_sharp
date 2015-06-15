require 'active_support/all'
require 'market_sharp/version'
require 'ruby_odata'

require File.expand_path('../market_sharp/configuration', __FILE__)
require File.expand_path('../market_sharp/api', __FILE__)
require File.expand_path('../market_sharp/client', __FILE__)

module MarketSharp

  extend Configuration
  # Alias for MarketSharp::Client.new
  # @return [MarketSharp::Client]
  def self.client(options = {})
    MarketSharp::Client.new(options)
  end

  # Delegate to MarketSharp::Client
  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end
end
