class CreateUserSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :user_settings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :avatar
      t.string :card_info
      t.string :wallet_address
      t.string :nickname
      t.decimal :account_balance

      t.timestamps
    end
  end
end
