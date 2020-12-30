class Project < ApplicationRecord
    # Validations
    validates :title, presence: true, length: {minimum: 3, maximum: 30}
    validates :description, presence: true, length: {minimum: 5, maximum: 100}

    # Associations
    # belongs_to :user
    # TODO; Uncomment the line above.
end
