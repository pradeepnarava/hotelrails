class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :time_zone, :string
     add_column :users, :tax, :float
  end
end
