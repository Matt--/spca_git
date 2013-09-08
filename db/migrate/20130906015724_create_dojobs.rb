class CreateDojobs < ActiveRecord::Migration
  def change
    create_table :dojobs do |t|
      t.integer :volscheduler_id
      t.string :job

      t.timestamps
    end
  end
end
