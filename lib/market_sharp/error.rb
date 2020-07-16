# frozen_string_literal: true

# Module list default api errors
module MarketSharp
  class Error < StandardError; end
  class ServiceUnavailableError < Error; end
  class ConnectionError < Error; end
  class AuthorizationError < Error; end
  class BadRequestError < Error; end
  class RecordNotFoundError < Error; end
  class InternalServerError < Error; end
end
