require 'spec_helper'

RSpec.describe MarketSharp::Client do

  it 'should connect using the configured endpoint and api version' do
    client = MarketSharp::Client.new({company_id: 'abcd', user_key: '5766gy8ydjg', secret_key: 'jhgyytr4r66tyug86ruyg8'})
    expect(client.company_id).to eq('abcd')
    expect(client.user_key).to eq('5766gy8ydjg')
    expect(client.secret_key).to eq('jhgyytr4r66tyug86ruyg8')
    expect(client.endpoint).to eq('https://api4.marketsharpm.com/WcfDataService.svc/')
    
  end

end
