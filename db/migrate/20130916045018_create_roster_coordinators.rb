class CreateRosterCoordinators < ActiveRecord::Migration
  def change
    create_table :roster_coordinators do |t|
      t.string :firstname
      t.string :lastname
      t.string :title
      t.integer :department_id

      t.timestamps
    end
  end
end
