class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string  :title
      t.date    :dob
      t.string  :firstname
      t.string  :lastname
      t.text    :address
      t.string  :email
      t.string  :moblie
      t.string  :home
      t.text    :background
      t.boolean :befosterer
      t.date    :break_from
      t.date    :break_to
      t.integer :scheduledjobtype_id
      t.references :orientation
      t.string  :status

      t.timestamps
    end
    add_index :volunteers, :firstname
  end
end
