class CreateOrientations < ActiveRecord::Migration
  def change
    create_table :orientations do |t|
      t.string :presenter
      t.date :date

      
      t.timestamps
    end
  end
end
