class CreateOrientations < ActiveRecord::Migration
  def change
    create_table :orientations do |t|
      t.string :presenter
      t.datetime :datetime
      
      t.timestamps
    end
  end
end
