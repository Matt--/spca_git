class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.date :dob
      t.string :email
      t.string :homePhone
      t.string :workPhone
      t.string :mobile

      t.timestamps
    end
  end
end
