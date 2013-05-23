class CreateRoomCosts < ActiveRecord::Migration
  def change
    create_table :room_costs do |t|
      t.integer :room_reservation_id
      t.date :day
      t.decimal :cost

      t.timestamps
    end
  end
end
