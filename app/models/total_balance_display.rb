class TotalBalanceDisplay < ApplicationRecord
  belongs_to :user

  # Validations
  validates :balance_usd, presence: true
end
