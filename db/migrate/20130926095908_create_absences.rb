class CreateAbsences < ActiveRecord::Migration
  def change
    create_table :absences do |t|
      t.time :day
      t.references :volunteer

      t.timestamps
    end
  end
end
