class StockCount < ActiveRecord::Base
  # attr_accessible :title, :body
   has_many :stock_list_items, :through=>:remaining_items
   has_many :remaining_items
end
