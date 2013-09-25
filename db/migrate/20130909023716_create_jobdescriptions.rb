class CreateJobdescriptions < ActiveRecord::Migration
  def change
    create_table :jobdescriptions do |t|
      t.string :name
      t.references :department

      t.timestamps
    end
  end
end
