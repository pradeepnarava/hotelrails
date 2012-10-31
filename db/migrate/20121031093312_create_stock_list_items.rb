class CreateStockListItems < ActiveRecord::Migration
  def change
    create_table :stock_list_items do |t|
      t.string :name
      t.timestamps
    end
  end
end
