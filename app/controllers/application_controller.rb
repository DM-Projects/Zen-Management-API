class ApplicationController < ActionController::API
    before_action :validate_token

    private
    def validate_token
        # == Description
        # Validates the authenticity of the token provided by +@request['HTTP_AUTHORIZATION']+
        # Validates using JWT.decode, using the secret key and the payload received (+token+)
        l = Logger::new(STDOUT)
        l.add(Logger::DEBUG, "Testing middleware before_action")
    end
end
