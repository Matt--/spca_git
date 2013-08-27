class CreateFosterers < ActiveRecord::Migration
  def change
    create_table :fosterers do |t|
      t.string :firstname
      t.string :lastname
      t.string :unitNumber
      t.string :streetNumber
      t.string :street
      t.string :suburb
      t.string :city
      t.string :zipCode
      t.string :email
      t.string :homecontact
      t.string :mobilecontact
      t.string :workcontact
      t.string :theirname
      t.string :homecontact2
      t.string :mobilecontact2
      t.string :workcontact2
      t.string :relationship
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
      t.string :personal1
      t.string :personal1if
      t.string :personal2
      t.string :personal3
      t.string :personal4
      t.string :personal5      
      
      
      t.timestamps
    end
  end
end
