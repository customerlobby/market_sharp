require 'spec_helper'

RSpec.describe MarketSharp::Client do

  it 'should connect using the configured endpoint and api version' do
    client = MarketSharp::Client.new
    endpoint = URI.parse("#{client.endpoint}#{client.api_version}/")
    connection = client.send(:connection).build_url(nil).to_s
    expect(connection).to eq(endpoint.to_s)
  end

end
