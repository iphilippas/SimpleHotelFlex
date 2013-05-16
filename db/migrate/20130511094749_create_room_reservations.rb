class CreateRoomReservations < ActiveRecord::Migration
  def change
    create_table :room_reservations do |t|
      t.integer :room_id
      t.integer :reservation_id
      t.text :rate

      t.timestamps
    end
  end
end
