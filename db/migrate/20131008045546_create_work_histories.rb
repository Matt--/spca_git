class CreateWorkHistories < ActiveRecord::Migration
  def change
    create_table :work_histories do |t|
      t.references :volunteer
      t.date :workdate,     :null => false
      t.string :job,        :null => false
      t.string :department, :null => false
      t.string :supervisor, :null => false
      t.boolean :absent,    :default => false

      t.timestamps
    end
  end
end
