class ApplicationController < ActionController::API
    
    def decoded_token
        begin
            token = request.headers["Authorization"].split(" ")[1]
            JWT.decode(token, signing_secret, true, { algorithm: 'HS256'})
        rescue
            return nil
        end
    end

    def create_token(user_id)
        payload = {user_id: user_id}
        JWT.encode(payload, signing_secret, "HS256")
    end

    def current_user
        if decoded_token != nil
            User.find(decoded_token[0]["user_id"])
        end
    end

    def signing_secret
        # byebug
        ENV['JWT_SECRET_KEY']
    end

end
