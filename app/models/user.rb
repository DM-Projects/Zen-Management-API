# frozen_string_literal: true

class User < ApplicationRecord

    # Validations
    validates :username,
              presence: true,
              length: {minimum: 3, maximum: 15},
              uniqueness: {case_sensitive: false}

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :email,
              presence: true,
              uniqueness: {case_sensitive: false},
              format: { with: VALID_EMAIL_REGEX}

    # Attribute Accessors
    # attr_reader :name, :email, :username, :id

    #  Associations
    has_many :tickets, dependent: :destroy
    has_many :issues, dependent: :destroy
    # belongs_to: :project, dependent: :cascade

end

