class Role < ApplicationRecord
    # Validations
    # Change from literal values to constants.
    validates :type, presence: true, length: {minimum: 2, maximum: 15}
end
