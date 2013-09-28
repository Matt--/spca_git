class CreateDojobs < ActiveRecord::Migration
  def change
    create_table :dojobs do |t|
      t.integer :volscheduler_id
      t.integer :dayint
      t.integer :jobdescription_id

      t.timestamps
    end
  end
end
