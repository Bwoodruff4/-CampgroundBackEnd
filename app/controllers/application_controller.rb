class ApplicationController < ActionController::API
    def authenticate
        authorization_header = request.headers["Authorization"]
        if !authorization_header
            render json: {error: "No Authorization"}, status: :unauthorized
        else
            token = authorization_header.split(" ")[1]
            secret = Rails.application.secrets.secret_key_base
            begin
                payload = JWT.decode(token, secret)[0]
                @user = User.find(payload["user_id"])
            rescue
                render json: {error: "Invalid token"}, status: :unauthorized
            end
        end
    end
end
