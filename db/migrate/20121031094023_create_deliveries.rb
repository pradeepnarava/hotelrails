class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|

      t.float :cost



      t.timestamps
    end
  end
end
