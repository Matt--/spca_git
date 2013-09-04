class CreateFosterers < ActiveRecord::Migration
  def change
    create_table :fosterers do |t|

      t.string :kitcat
      t.string :p1
      t.string :p2
      t.string :p31
      t.string :p32
      t.string :p33
      t.string :p34
      t.string :p35
      t.string :p36
      t.string :p4
      t.integer :p51
      t.integer :p52
      t.integer :p53   
      t.string :send_email
      t.string :personal2
      
      t.timestamps
    end
  end
end
