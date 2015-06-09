module MarketSharp
  class Client
    module Contracts
      def contracts_by_job_id(job_id, params = {})
        connection.Contracts.filter("jobId eq '#{job_id}'")

        response = connection.execute
        return JSON.parse(response.to_json)
      end
    end
  end
end
