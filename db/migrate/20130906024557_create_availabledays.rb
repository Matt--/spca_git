class CreateAvailabledays < ActiveRecord::Migration
  def change
    create_table :availabledays do |t|
      t.string  :day
      t.integer :dayint
      t.integer :volunteer_id
      t.integer :schedulejobtype_id

      t.timestamps
    end
  end
end
