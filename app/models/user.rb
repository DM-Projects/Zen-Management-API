# frozen_string_literal: true

class User < ApplicationRecord
    # attr_reader :name, :email, :id, :username

  has_many :tickets, dependent: :destroy
  has_many :issues, dependent: :destroy

  ##
    # @note since we don't want to lock the User or the Project model to depend on one another
    # User's belong to projects, but at project creation, the current user's id will be aggregated to the new project record
end

