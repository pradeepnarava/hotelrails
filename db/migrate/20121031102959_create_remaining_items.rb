class CreateRemainingItems < ActiveRecord::Migration
  def change
    create_table :remaining_items do |t|
t.integer :stock_list_item_id
t.integer :stock_count_id
t.integer :quantity
t.float :mrp
      t.timestamps
    end
  end
end
