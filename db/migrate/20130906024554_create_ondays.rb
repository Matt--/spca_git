class CreateOndays < ActiveRecord::Migration
  def change
    create_table :ondays do |t|
      t.string  :day
      t.integer :dayint
      t.integer :volunteer_id
      t.integer :dojob_id

      t.timestamps
    end
  end
end
