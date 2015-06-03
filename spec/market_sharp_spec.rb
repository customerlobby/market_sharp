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

  describe '#user_key' do
    it 'should return the default user key' do
      expect(MarketSharp.user_key).to eq(MarketSharp::Configuration::DEFAULT_USER_KEY)
    end
  end

  describe '#user_key=' do
    it 'should set the user key' do
      MarketSharp.user_key = 'test'
      expect(MarketSharp.user_key).to eq('test')
    end
  end

  describe '#company_id' do
    it 'should return the default company id' do
      expect(MarketSharp.company_id).to eq(MarketSharp::Configuration::DEFAULT_COMPANY_ID)
    end
  end

  describe '#company_id=' do
    it 'should set the company id' do
      MarketSharp.company_id = 'test'
      expect(MarketSharp.company_id).to eq('test')
    end
  end

  describe '#secret_key' do
    it 'should return the default secret_key' do
      expect(MarketSharp.secret_key).to eq(MarketSharp::Configuration::DEFAULT_SECRET_KEY)
    end
  end

  describe '#secret_key=' do
    it 'should set the secret_key' do
      MarketSharp.secret_key = '/test'
      expect(MarketSharp.secret_key).to eq('/test')
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
