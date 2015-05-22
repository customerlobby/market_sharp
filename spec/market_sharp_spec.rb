require 'spec_helper'

RSpec.describe MarketSharp do
  after do
    MarketSharp.reset
  end

  describe ".client" do
    it "should be a MarketSharp::Client" do
      expect(MarketSharp.client).to be_a(MarketSharp::Client)
    end
  end

  describe '#api_key' do
    it 'should return the default api key' do
      expect(MarketSharp.api_key).to eq(MarketSharp::Configuration::DEFAULT_API_KEY)
    end
  end

  describe '#api_key=' do
    it 'should set the api key' do
      MarketSharp.api_key = 'test'
      expect(MarketSharp.api_key).to eq('test')
    end
  end

  describe '#api_version' do
    it 'should return the default api version' do
      expect(MarketSharp.api_version).to eq(MarketSharp::Configuration::DEFAULT_API_VERSION)
    end
  end

  describe '#api_version=' do
    it 'should set the api_version' do
      MarketSharp.api_version = '/test'
      expect(MarketSharp.api_version).to eq('/test')
    end
  end

  describe '#adapter' do
    it 'should return the default adapter' do
      expect(MarketSharp.adapter).to eq(MarketSharp::Configuration::DEFAULT_ADAPTER)
    end
  end

  describe '#adapter=' do
    it 'should set the adapter' do
      MarketSharp.adapter = :typhoeus
      expect(MarketSharp.adapter).to eq(:typhoeus)
    end
  end

  describe '#endpoint' do
    it 'should return the default endpoint' do
      expect(MarketSharp.endpoint).to eq(MarketSharp::Configuration::DEFAULT_ENDPOINT)
    end
  end

  describe '#endpoint=' do
    it 'should set the endpoint' do
      MarketSharp.endpoint = 'http://www.google.com'
      expect(MarketSharp.endpoint).to eq('http://www.google.com')
    end
  end

  describe '#configure' do
    MarketSharp::Configuration::VALID_OPTIONS_KEYS.each do |key|

      it "should set the #{key}" do
        MarketSharp.configure do |config|
          config.send("#{key}=", key)
          expect(MarketSharp.send(key)).to eq(key)
        end
      end
    end
  end
end
