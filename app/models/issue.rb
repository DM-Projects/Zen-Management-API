class Issue < ApplicationRecord
    # Validations
    validates :i_type, presence: true
    validates :title, presence: true, length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {minimum: 5, maximum: 200}
    validates :label, presence: false, length: {minimum: 2, maximum: 10} # TODO: Change from literal values to constants.

    # Allows Rails to know the passwords are hashed
    has_secure_password

    # Associations
    belongs_to :user
end
