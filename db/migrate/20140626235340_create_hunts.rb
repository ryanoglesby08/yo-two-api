class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.string :name, null: false
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
