class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.float   :total
      t.integer :status
      t.integer :price
      t.timestamps
      
    end
  end
end
