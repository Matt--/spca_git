class CreateDepartmentJobdescriptions < ActiveRecord::Migration
  def change
    create_table :department_jobdescriptions do |t|
      t.references :department
      t.references :jobdescription

      t.timestamps
    end
    add_index :department_jobdescriptions, :department_id
    add_index :department_jobdescriptions, :jobdescription_id
  end
end
