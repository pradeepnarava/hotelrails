class Delivery < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :stock_list_items, :through=>:delivery_items
  has_many :delivery_items

end
