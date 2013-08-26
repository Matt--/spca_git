class CreateVolcoordinators < ActiveRecord::Migration
  def change
    create_table :volcoordinators do |t|
      t.string :email
      t.string :email_header
      t.string :appEmailAcknowledgeText

      t.timestamps
    end
  end
end
