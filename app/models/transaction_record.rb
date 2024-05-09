class TransactionRecord < ApplicationRecord
  
  # Validations
  validates :type, presence: true
  validates :timestamp, presence: true
  belongs_to :user
end
