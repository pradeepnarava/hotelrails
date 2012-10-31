class StockListItem < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :stock_counts, :through=>:remaining_items
  has_many :remaining_items

  has_many :deliveries, :through=>:delivery_items
  has_many :delivery_items
end
