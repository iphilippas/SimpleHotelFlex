class CreateRoomRates < ActiveRecord::Migration
  def change
    create_table :room_rates do |t|
      t.integer :duration
      t.text :days
      t.decimal :rate
      t.integer :room_type_id

      t.timestamps
    end
  end
end
