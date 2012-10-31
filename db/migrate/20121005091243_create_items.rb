class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name

      t.float   :price
      t.string :category
      #t.integer :category_id

    end
  end
end
