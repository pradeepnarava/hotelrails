class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|

      t.integer :table_name
    end
  end
end
