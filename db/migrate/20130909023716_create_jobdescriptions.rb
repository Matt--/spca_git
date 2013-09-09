class CreateJobdescriptions < ActiveRecord::Migration
  def change
    create_table :jobdescriptions do |t|
      t.string :name

      t.timestamps
    end
  end
end
