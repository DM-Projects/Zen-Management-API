# frozen_string_literal: true

class User < ApplicationRecord

    before_save { self.email = email.downcase }

    # Validations
    validates :username,
              presence: true,
              length: {minimum: 3, maximum: 15},
              uniqueness: {case_sensitive: false}

    # Format for validating email addresses. Must contain "-----@---.---"
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :email,
              presence: true,
              uniqueness: {case_sensitive: false},
              format: { with: VALID_EMAIL_REGEX}

    #  Associations
    has_many :ticket, dependent: :destroy
    has_many :issue, dependent: :destroy
    # belongs_to: :project, dependent: :cascade

    # Attribute Accessors
    # attr_reader :name, :email, :username, :id

end

