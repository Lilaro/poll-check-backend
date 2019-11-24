class AuthController < ApplicationController

    def login
        user = User.find_by(email: params[:email]) 
        #if user exists AND user has a token
        is_authenticated = user && user.authenticate(params[:password])

        if is_authenticated
            generated_token = create_token(user.id)
            render json: {token: generated_token, user_id: user.id}
        else
            render json: {errors: ["Invalid email address or password"]}, status: 422
        end
    end

end