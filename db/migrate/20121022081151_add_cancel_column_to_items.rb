class AddCancelColumnToItems < ActiveRecord::Migration
  def change
    add_column :orderlists, :cancel_item, :boolean

  end
end
