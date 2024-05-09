class Position < ApplicationRecord
   # Validations
   validates :currency_type, presence: true
   validates :amount, presence: true
 
   # Associations
   belongs_to :user
end
