module MarketSharp
  module Configuration
    VALID_OPTIONS_KEYS = %i[
      company_id
      user_key
      secret_key
      endpoint
    ].freeze

    DEFAULT_COMPANY_ID = nil

    DEFAULT_USER_KEY = nil

    DEFAULT_SECRET_KEY = nil

    DEFAULT_ENDPOINT = 'https://api4.marketsharpm.com/WcfDataService.svc/'

    attr_accessor(*VALID_OPTIONS_KEYS)

    # Convenience method to allow configuration options to be set in a block
    def configure
      yield self
    end

    def options
      VALID_OPTIONS_KEYS.inject({}) do |option, key|
        option.merge!(key => send(key))
      end
    end

    # When this module is extended, reset all settings.
    def self.extended(base)
      base.reset
    end

    # Reset all configuration settings to default values.
    def reset
      self.company_id  = DEFAULT_COMPANY_ID
      self.user_key    = DEFAULT_USER_KEY
      self.secret_key  = DEFAULT_SECRET_KEY
      self.endpoint    = DEFAULT_ENDPOINT
    end
  end
end
