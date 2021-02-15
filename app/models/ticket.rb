class Ticket < ApplicationRecord

    # Validations
    validates :title, presence: true, length: {minimum: 5, maximum: 35}
    validates :description, presence: true, length: {minimum: 5, maximum: 1000}

    # Associations
    belongs_to :user
end
