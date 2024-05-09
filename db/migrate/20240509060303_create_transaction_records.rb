class CreateTransactionRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :transaction_records do |t|
      t.references :user, null: false, foreign_key: true
      t.string :type
      t.datetime :timestamp

      t.timestamps
    end
  end
end
