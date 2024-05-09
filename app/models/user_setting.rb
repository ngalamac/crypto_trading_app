class UserSetting < ApplicationRecord
  belongs_to :user

  # Validations
  validates :avatar, presence: true
  validates :card_info, presence: true
  validates :wallet_address, presence: true
  validates :nickname, presence: true
  validates :account_balance, presence: true
end
