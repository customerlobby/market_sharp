# frozen_string_literal: true

require 'active_support/all'
require 'market_sharp/version'
require 'ruby_odata'

require File.expand_path('market_sharp/configuration', __dir__)
require File.expand_path('market_sharp/error', __dir__)
require File.expand_path('market_sharp/api', __dir__)
require File.expand_path('market_sharp/client', __dir__)

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
