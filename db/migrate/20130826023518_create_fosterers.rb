class CreateFosterers < ActiveRecord::Migration
  def change
    create_table :fosterers do |t|

      t.string :motivation
      t.boolean :catnursing
      t.boolean :catfeeding
      t.boolean :catbottlefeed
      t.boolean :catinjured
      t.boolean :dognursing
      t.boolean :dogfeeding
      t.boolean :dogbottlefeed
      t.boolean :doginjured
      t.boolean :rabgui
      t.boolean :hedgehoginjured
      t.boolean :hedgehogbottle
      t.boolean :birdsinjured
      t.boolean :birdstoung
      t.boolean :livestock
      
      
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
      
      
      
      
      
      t.integer :volunteer_id
      
      
      t.timestamps
    end
  end
end
