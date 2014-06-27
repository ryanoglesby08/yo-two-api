class CreateHunters < ActiveRecord::Migration
  def change
    create_table :hunters do |t|
      t.datetime :start_time, null: false
      t.datetime :finish_time
      t.references :hunt

      t.timestamps
    end
  end
end
