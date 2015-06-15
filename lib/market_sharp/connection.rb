module MarketSharp
  module Connection
    private

    def connection
      options = {
        verify_ssl: OpenSSL::SSL::VERIFY_NONE,
        rest_options: { headers: { "Authorization" => calculated_authorization } },
        additional_params: { headers: { "Authorization" => calculated_authorization } },
      }

      return @service ||= ::OData::Service.new(self.endpoint, options)
    end

    def calculated_authorization
      epoch_time_stamp = Time.now.utc.to_i

      message = "#{self.company_id}#{self.user_key}#{epoch_time_stamp}"

      base64_secret_key = Base64.decode64(self.secret_key)
      computed_secret = OpenSSL::HMAC.digest( 'sha256', base64_secret_key, message)

      return "#{self.company_id}:#{self.user_key}:#{epoch_time_stamp}:#{Base64.encode64(computed_secret).strip}"
    end
  end
end
