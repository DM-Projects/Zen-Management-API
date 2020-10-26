class UserprofileController < ApplicationController

  def getissues

    id = params['id']

    user = User.find(id)

    render json: user.issues
  end

end
