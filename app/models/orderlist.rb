class Orderlist < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :orders
  belongs_to :items
  after_initialize :init
  def init
    #self.count ||= 15
    self.cancel_item ||= false
  end
def itemname
  Item.find(self.item_id).item_name
end
end
