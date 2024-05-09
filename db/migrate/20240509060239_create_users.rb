class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :phone_number
      t.string :password_digest
      t.string :invitation_code

      t.timestamps
    end
  end
end
