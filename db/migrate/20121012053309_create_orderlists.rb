class CreateOrderlists < ActiveRecord::Migration
  def change
    create_table :orderlists do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :quantity
      t.integer :price
      t.timestamps
    end
  end
end
