class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.text :description
      t.boolean :vip
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
