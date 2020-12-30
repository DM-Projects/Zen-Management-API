class Issue < ApplicationRecord
    # Validations
    validates :i_type, presence: true
    validates :title, presence: true, length: {minimum: 3, maximum: 30}
    validates :description, presence: true, length: {minimum: 5, maximum: 100}
    validates :label, presence: false, length: {minimum: 2, maximum: 5} # Change from literal values to constants. NEEDED

    # Associations
    belongs_to :user
end
