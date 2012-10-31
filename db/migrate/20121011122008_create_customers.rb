class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :serial_no
      t.date :date_of_transcation
      t.float :total
      t.integer :table_id
      t.integer :status
      t.float :adjusted_total
      t.string :adjustment_reason
      t.timestamps
    end
  end
end
