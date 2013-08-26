class CreateVolcoordinators < ActiveRecord::Migration
  def change
    create_table :volcoordinators do |t|
      t.string :email_replyto
      t.string :email_header
      t.string :email_content

      t.timestamps
    end
  end
end
