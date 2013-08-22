class CreateWhiteboards < ActiveRecord::Migration
  def change
    create_table :whiteboards do |t|
      t.string :title
      t.text :body
      t.references :volunteer

      t.timestamps
    end
    add_index :whiteboards, :volunteer_id
  end
end
