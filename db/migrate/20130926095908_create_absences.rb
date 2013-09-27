class CreateAbsences < ActiveRecord::Migration
  def change
    create_table :absences do |t|
      t.date :day
      t.references :volunteer

      t.timestamps
    end
  add_index :absences, :day
  end
end
