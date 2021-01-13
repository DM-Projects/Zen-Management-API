class LoginController < ApplicationController
    def index
        render inline: "<h1>Login Index</h1>"
    end

    def loginentity
        puts(request)
        user = User.find_by_email(request[:email])
        # Create token with +60min+ expire time
        # Add the +username+ to payload
        # Return token + username +AND+ role.
        render json: user
    end
end
