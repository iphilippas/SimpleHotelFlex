class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :reference
      t.integer :room_id
      t.date :fromdate
      t.date :todate
      t.integer :customer_id
      t.decimal :deposit
      t.text :description

      t.timestamps
    end
  end
end
