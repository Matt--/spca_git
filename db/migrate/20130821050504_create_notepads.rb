class CreateNotepads < ActiveRecord::Migration
  def change
    create_table :notepads do |t|
      t.string :title
      t.text :content
      t.references :volunteers

      t.timestamps
    end
    add_index :notepads, :volunteers_id
  end
end
