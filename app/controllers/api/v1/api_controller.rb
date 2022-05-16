module Api
  module V1
    class ApiController < ActionController::API
      before_action :db_connection

      protected
      
      def db_connection
        token = response.request.headers["X-Token"]
        client_db = Client.find_by_token(token)
        if client_db
          Shard.use(client_db.name)
        else
          render json: { error: "No autorizado" }, status: 401
        end
      end
    end
  end
end