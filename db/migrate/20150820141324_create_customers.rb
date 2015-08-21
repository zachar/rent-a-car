class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :id_card_number
      t.string :phone
      t.string :ccn
      t.string :cvv
      t.timestamps null: false
    end
  end
end
