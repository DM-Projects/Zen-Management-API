class UserprofileController < ApplicationController

  def getissues

    id = params['id']

    user = User.find(id)

    render json: user.issues
  end

  def gettickets

    id = params['id']

    test = Test.new(20, "Markeloff")

    puts(test.id)
    puts(test.name)

    render json: test.bit

  end

end

class Test

  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end

  def bit
    return {id: @id, name: @name}
  end

end
