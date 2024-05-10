class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    # Validations
  #validates :phone_number, presence: true, uniqueness: true
  #validates :password_digest, presence: true
  #validates :invitation_code, presence: true

  # Associations
  has_many :verification_codes
  has_many :transaction_records
  has_many :positions
  has_one :user_settings
  has_one :total_balance_display
end
