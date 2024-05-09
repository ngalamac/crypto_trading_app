class CreateTotalBalanceDisplays < ActiveRecord::Migration[7.1]
  def change
    create_table :total_balance_displays do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :balance_usd

      t.timestamps
    end
  end
end
