class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.date :start_at
      t.date :finish_at
      t.decimal :total_cost, precision: 8, scale: 2
      t.references :customer
      t.references :car
      t.timestamps null: false
    end
  end
end
