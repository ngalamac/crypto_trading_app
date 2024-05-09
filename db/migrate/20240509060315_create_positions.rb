class CreatePositions < ActiveRecord::Migration[7.1]
  def change
    create_table :positions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :currency_type
      t.decimal :amount

      t.timestamps
    end
  end
end
