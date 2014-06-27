class AddNameToHunter < ActiveRecord::Migration
  def change
    add_column :hunters, :name, :string, null: false
  end
end
