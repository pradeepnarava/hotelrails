class Table < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :customers, :dependent=>:destroy

  

end
