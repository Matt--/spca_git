class CreateRosterCoordinators < ActiveRecord::Migration
  def change
    create_table :roster_coordinators do |t|
      t.string :firstname
      t.string :lastname
      t.string :title
      t.references :department
      t.references :user

      t.timestamps
    end
  end
end
