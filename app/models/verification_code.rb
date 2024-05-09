class VerificationCode < ApplicationRecord
  # Validations
  validates :code, presence: true
  validates :expiration_time, presence: true

  # Associations
  belongs_to :user
end
