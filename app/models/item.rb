class Item < ActiveRecord::Base
  # attr_accessible :title, :body

  #has_many :customers, :through=>:orders, :dependent=>:destroy
  has_many :orders, :through=>:orderlists
  has_many :orderlists
end
