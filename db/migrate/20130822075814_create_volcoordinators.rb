class CreateVolcoordinators < ActiveRecord::Migration
  def change
    create_table :volcoordinators do |t|
      t.string  :email_replyto
      t.string  :application_email_header
      t.string  :application_email_content
      t.integer :absence_tolerence
      t.integer :absence_period
      t.string  :absence_email_header
      t.string  :absence_email_content
      t.references :user
      t.timestamps
    end
  end
end
