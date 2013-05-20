class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :room_type_id
      t.text :description

      t.timestamps
    end
  end
end
