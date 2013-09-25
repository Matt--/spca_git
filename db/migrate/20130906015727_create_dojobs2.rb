class CreateDojobs2 < ActiveRecord::Migration
  def change
    create_table :dojobs do |t|
      t.string :name

      t.timestamps
    end
  end
end
