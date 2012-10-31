class CreateDeliveryItems < ActiveRecord::Migration
  def change
    create_table :delivery_items do |t|
 t.integer :stock_list_item_id
 t.integer :delivery_id
 t.float :mrp
 t.integer :quantity
      t.timestamps
    end
  end
end
