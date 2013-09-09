class CreateSchedulejobtypes < ActiveRecord::Migration
  def change
    create_table :schedulejobtypes do |t|
      t.integer :volscheduler_id
      t.string :job

      t.timestamps
    end
  end
end
