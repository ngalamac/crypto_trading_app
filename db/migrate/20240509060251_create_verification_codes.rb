class CreateVerificationCodes < ActiveRecord::Migration[7.1]
  def change
    create_table :verification_codes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :code
      t.datetime :expiration_time

      t.timestamps
    end
  end
end
