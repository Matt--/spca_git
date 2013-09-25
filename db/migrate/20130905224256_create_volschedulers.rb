class CreateVolschedulers < ActiveRecord::Migration
  def change
    create_table :volschedulers do |t|
      t.references :department

      t.timestamps
    end
  end
end
