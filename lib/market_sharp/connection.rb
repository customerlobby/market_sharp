require 'faraday_middleware'
Dir[File.expand_path('../../faraday/*.rb', __FILE__)].each{|f| require f}

module MarketSharp
  module Connection
    private

    def connection
      options = {
        :url => "#{endpoint}#{api_version}/"
      }
      
      # TODO: Remove or update the MarketSharpAuth middleware as needed. See the faraday/auth.rb
      # TODO: file for additional information.
      Faraday::Connection.new(options) do |connection|
        connection.use FaradayMiddleware::MarketSharpAuth, api_key
        connection.use FaradayMiddleware::Mashify
        connection.use Faraday::Response::ParseJson
        connection.adapter(adapter)
      end
    end
  end
end
