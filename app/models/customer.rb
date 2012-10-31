class Customer < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :table
  #has_many :items, :through=>:orders, :dependent=>:destroy
  has_many :orders, :dependent=>:destroy
  before_create :generate_serial_no_and_date_of_transcation
  after_initialize :init
  def init
    #self.count ||= 15
    self.status ||= 0
  end

  private
   def generate_serial_no_and_date_of_transcation
     self.serial_no = (Time.now).to_i
     self.date_of_transcation = Date.today
   end
end
