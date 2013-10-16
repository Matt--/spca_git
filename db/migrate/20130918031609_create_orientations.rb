class CreateOrientations < ActiveRecord::Migration
  def change
    create_table :orientations do |t|
      t.string :presenter
      t.date :date
      t.time :time
      t.datetime :datetime
      t.integer :participantMax
      t.integer :numCurrParticipant
      t.integer :duration
      
      t.timestamps
    end
  end
end
