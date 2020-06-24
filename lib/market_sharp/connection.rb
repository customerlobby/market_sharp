# frozen_string_literal: true

module MarketSharp
  module Connection
    private

    def connection
      options = {
        verify_ssl: OpenSSL::SSL::VERIFY_NONE,
        rest_options: { headers: { 'Content-Type': 'application/json', 'Authorization': calculated_authorization.to_s } }
      }

      @service ||= ::OData::Service.new(endpoint, options)
    end

    def calculated_authorization
      epoch_time_stamp = Time.now.utc.to_i

      message = "#{company_id}#{user_key}#{epoch_time_stamp}"

      base64_secret_key = Base64.decode64(secret_key)
      computed_secret = OpenSSL::HMAC.digest('sha256', base64_secret_key, message)

      "#{company_id}:#{user_key}:#{epoch_time_stamp}:#{Base64.encode64(computed_secret).strip}"
    end
  end
end
