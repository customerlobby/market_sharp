module MarketSharp
  class Client
    module Customers

      def customers(params = {})
        response = get("customers", params)
      end

      def customer(id, params = {})
        response = get("customers/#{id}", params)
      end

    end
  end
end
