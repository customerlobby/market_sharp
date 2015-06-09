module MarketSharp
  # Wrapper for the MarketSharp REST API.
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}

    # TODO: Be sure to update these includes to the actual resources available in the client directory.
    include MarketSharp::Client::Customers
    include MarketSharp::Client::Contracts
    include MarketSharp::Client::Transactions
  end
end
