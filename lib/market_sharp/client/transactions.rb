module MarketSharp
  class Client
    module Transactions

      def transactions(params = {})
        page = params[:page] || 1
        page_size = params[:page_size] || 100
        date_to_filter_on = params[:filter_date] || 'lastUpdate'
        start_date = params[:start_date].strftime("%Y-%m-%dT%H:%M:%S")
        end_date = params[:end_date].strftime("%Y-%m-%dT%H:%M:%S")

        connection.Jobs.skip(page * page_size).top(page_size).filter("#{date_to_filter_on} ge datetime'#{start_date}'").filter("#{date_to_filter_on} le datetime'#{end_date}'")

        response = connection.execute
        return JSON.parse(response.to_json)
      end

      def transaction(id, params = {})
        connection.Jobs.filter("id eq '#{id}'").expand('Contract')

        response = connection.execute
        return JSON.parse(response.to_json)
      end

    end
  end
end
