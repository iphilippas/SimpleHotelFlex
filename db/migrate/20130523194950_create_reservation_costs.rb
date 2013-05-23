class CreateReservationCosts < ActiveRecord::Migration
  def change
    create_table :reservation_costs do |t|
      t.integer :reservation_id
      t.decimal :rate
      t.date :day

      t.timestamps
    end
  end
end
