class UserprofileController < ApplicationController

  def getissues
    id = params['id']
    user = User.find(id)
    render json: user.issues
  end

  def gettickets
    id = params['id']
    test = Test.new(20, "Markeloff")
    render json: test.bit

  end

  def getDashboardAnalytics

    id = params['id']
    user = User.find(id)
    error = nil

    dac = DashboardAccessController.new("De", 1997)

    render json: dac

    # begin
    #   issues = user.issues.length
    #   tickets = user.tickets.length
    #   raise("Error has occurred")
    #   tickets = nil
    #   issues = nil
    #   error = "Issues or tickets error for user #{id}"
    # rescue
    #   puts{message="Error"}
    # end
    #
    # render json: {'issues': issues, 'tickets': tickets, error: error}
  end

end