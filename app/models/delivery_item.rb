class DeliveryItem < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :delivery
  belongs_to :stock_list_item

end
