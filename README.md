# MarketSharp

A Ruby wrapper for the MarketSharp REST API.

## Installation

Add this line to your application's Gemfile:

    gem 'market_sharp'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install market_sharp

## Usage

### Configuration

Before you can make calls to MarketSharp you must configure the library with a valid API Token. You can request
a token be generated by MarketSharp. The API Token ties the API request to a particualr MarketSharp company id.

There are two ways to configure the  gem. You can pass a hash of configuration options when you create
a client, or you can use a configure block.

```ruby
client = MarketSharp.client({api_token: "YOUR_TOKEN_HERE"})
```

```ruby
MarketSharp.configure do |config|
  config.api_token = "YOUR_TOKEN_HERE"
end

client = MarketSharp.client
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request