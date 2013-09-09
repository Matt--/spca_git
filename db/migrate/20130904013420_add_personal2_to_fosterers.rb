class AddPersonal2ToFosterers < ActiveRecord::Migration
  def change
    add_column :fosterers, :personal, :string
  end
end
