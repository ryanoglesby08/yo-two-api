class CreateVoiceMessages < ActiveRecord::Migration
  def change
    create_table :voice_messages do |t|
      t.string :location
      t.integer :from
      t.integer :to

      t.timestamps
    end
  end
end
