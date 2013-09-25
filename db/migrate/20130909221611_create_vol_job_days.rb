class CreateVolJobDays < ActiveRecord::Migration
  def change
    create_table :vol_job_days do |t|
      t.references :volunteer
      t.references :jobdescription
      t.references :onday
      t.references :frequency

      t.timestamps
    end
  end
end
