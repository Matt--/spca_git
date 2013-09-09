class CreateFosterer2s < ActiveRecord::Migration
  def change
    create_table :fosterer2s do |t|
      t.string :ownhome
      t.string :inspecting
      t.string :rooms
      t.string :roomwarm
      t.string :hutch
      t.string :rabbithutch
      t.string :aviary
      t.string :livestockfenced
      
      t.text :homedesc
      
      t.integer :numadulta
      t.integer :numchild
      t.string :ages
      
      t.integer :numhoursperday
      t.string :worktype
      t.text :secondperson
      t.string :allmembersagree
      t.string :bringcentre
      t.text :transportdesc
      
      t.boolean :agreement
      
      

      t.timestamps
    end
  end
end
