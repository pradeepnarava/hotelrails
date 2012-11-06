class DeliveryItemsController < ApplicationController
  def new
    @delivery=DeliveryItem.new()
    @stlis= StockListItem.all
      @stock_list_items= StockListItem.new()
  end
  def create
render :text=>"hello"
  end
end
