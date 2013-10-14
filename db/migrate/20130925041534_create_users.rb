class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :encrypted_password 
      t.string :salt
      t.integer :volunteer_id
      t.string :role
      t.timestamps
    end
  end
end
