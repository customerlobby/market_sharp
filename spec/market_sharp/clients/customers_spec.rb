# frozen_string_literal: true

require 'spec_helper'
# require 'byebug'

RSpec.describe MarketSharp::Client::Customers do
  pending "add some examples to (or delete) #{__FILE__}"

    before do
      # user_key =  '7181d828-df5b-406c-9768-f526507b6cd5'
      # secret_key = 'V0HzbUaTHeC2lhzt/2WE4Ox0oLf0sCVHPEXW4lTnYtk='
      # company_id = '2685'
      # @client = MarketSharp::Client.new({company_id: company_id, user_key: user_key, secret_key: secret_key})
      # @time_stamp = Time.now
    end

  #   describe '#customers' do

  #     before do
  #       @time_stamp = Time.now
  #       # @connection = OData::Service.new(@client.endpoint, {})
  #       # expect_any_instance_of(OData::Service).to receive(:new).and_return(connection)
  #       expect(Time).to receive(:now).and_return(@time_stamp)
  #       uri = URI.parse("https://api4.marketsharpm.com/WcfDataService.svc/$metadata?headers[Authorization]=#{calculated_authorization}")
  #       stub_request(:get, /https\:\/\/api4.marketsharpm.com\/WcfDataService.svc\/\$metadata*/ ).
  #         with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip, deflate', 'Host'=>'api4.marketsharpm.com', 'User-Agent'=>'rest-client/2.0.0 (darwin15.0.0 x86_64) ruby/2.3.0p0'}).
  #         to_return(:status => 200, :body => "#{fixture('customers.xml')}", :headers => {})
  #     end

      # it 'should return a list of customers' do
         # customers = @client.customers({start_date: 10.years.ago, end_date: Date.current})
         # expect(customers[0].present?).to be_truthy
      # end
  #   end

  #   def calculated_authorization
  #       epoch_time_stamp = @time_stamp.utc.to_i

  #       message = "#{@client.company_id}#{@client.user_key}#{epoch_time_stamp}"

  #       base64_secret_key = Base64.decode64(@client.secret_key)
  #       computed_secret = OpenSSL::HMAC.digest( 'sha256', base64_secret_key, message)

  #       key = "#{@client.company_id}:#{@client.user_key}:#{epoch_time_stamp}:#{Base64.encode64(computed_secret).strip}"

  #       return key.gsub('%20', '%2B')
  #     end
end
