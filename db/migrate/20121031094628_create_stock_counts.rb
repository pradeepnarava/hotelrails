class CreateStockCounts < ActiveRecord::Migration
  def change
    create_table :stock_counts do |t|
t.float :cost
      t.timestamps
    end
  end
end
