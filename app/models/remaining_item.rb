class RemainingItem < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :stock_count
  belongs_to :stock_list_item
end
