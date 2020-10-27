# frozen_string_literal: true

class User < ApplicationRecord
    # attr_reader :name, :email, :id, :username

  has_many :tickets, dependent: :destroy
  has_many :issues, dependent: :destroy

  # TODO: Research about the relation between Project <-> User.
    # Project can have as low as 1 member(user), but user can have no project.

  # PROPOSAL: Project belongs_to :user. Because that User will be the original creator/author/owner of the project.
    # The members of the project are an array of user ids that we can populate later.
end

