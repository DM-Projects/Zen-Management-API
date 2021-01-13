# frozen_string_literal: true

class User < ApplicationRecord

    # TODO Research about email confirmation?
    # TODO: Research about the relation between Project <-> User.
    # TODO Research about one-to-many
    # Project can have as low as 1 member(user), but user can have no project.
    # PROPOSAL: Project belongs_to :user. Because that User will be the original creator/author/owner of the project.
    # The members of the project have a project_id array.


    # Validations
    validates :username, presence: true, length: {minimum: 3, maximum: 15}
    # validates :email, presence: true, uniqueness: true #, is email?

    validates :email, presence: true, uniqueness: {
        message: ->(object, data) do
            "error here. #{data[:value]} is already taken"
        end
    }

    # Attribute Accessors
    # attr_reader :name, :email, :username, :id

    #  Associations
    has_many :tickets, dependent: :destroy
    has_many :issues, dependent: :destroy
    # belongs_to: :project, dependent: :cascade

end

