class CreateDeptSupervisors < ActiveRecord::Migration
  def change
    create_table :dept_supervisors do |t|
      t.string :firstname
      t.string :lastname
      t.string :title
      t.integer :department_id

      t.timestamps
    end
  end
end
