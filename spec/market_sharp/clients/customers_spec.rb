require 'spec_helper'


RSpec.describe MarketSharp::Client::Customers do
  pending "add some examples to (or delete) #{__FILE__}"
  
#   before do
#     @client = MarketSharp::Client.new({company_id: 'abcd', user_key: '5766gy8ydjg', secret_key: 'jhgyytr4r66tyug86ruyg8'})
#     @time_stamp = Time.now
      
#   end

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

#     it 'should return a list of customers' do
#       expect_any_instance_of(OData::Service).to receive(:execute).with(anything, anything).and_return("#{fixture('customers_list.json')}")
#       expect_any_instance_of(OData::Service).to receive(:set_namespaces).and_return(true)
#       # expect_any_instance_of(OData::Service).to receive(:default_instance_vars).and_return(true)
#       expect_any_instance_of(OData::Service).to receive(:build_classes_from_result).and_return(true)
#       @client.customers({start_date: 10.days.ago, end_date: Date.current})
#       # expect(a_get('https://api4.marketsharpm.com/WcfDataService.svc/$metadata?headers%5BAuthorization%5D=abcd:5766gy8ydjg:1478194988:u%2B9ygH8n1AbxcXSdC47AFakSSp68z5qFUpt9l7LNqmQ=').with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip, deflate', 'Host'=>'api4.marketsharpm.com', 'User-Agent'=>'rest-client/2.0.0 (darwin15.0.0 x86_64) ruby/2.3.0p0'})).to have_been_made
#     end
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
