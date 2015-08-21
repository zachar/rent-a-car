class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.decimal :cost_per_day , :precision => 8, :scale => 2
      t.timestamps null: false
    end
  end
end
