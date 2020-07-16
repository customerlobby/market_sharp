# frozen_string_literal: true

module MarketSharp
  class Client
    module Contracts
      def contracts_by_job_id(job_id, _params = {})
        connection.Contracts.filter("jobId eq '#{job_id}'")

        response = connection.execute
        JSON.parse(response.to_json)
      end
    rescue OData::ServiceError => e
      case e.http_code
      when 401
        raise(MarketSharp::AuthorizationError, e.message)
      when 404
        raise(MarketSharp::RecordNotFoundError, e.message)
      when 503
        raise(MarketSharp::ServiceUnavailableError, e.message)
      when 400
        raise(MarketSharp::BadRequestError, e.message)
      when 500
        raise(MarketSharp::ConnectionError, e.message)
      else
        raise(MarketSharp::Error, e.message)
      end
    rescue StandardError => e
      raise(MarketSharp::InternalServerError, e.message)
    end
  end
end
