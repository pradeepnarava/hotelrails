class ItemsController < ApplicationController
 def create
  if request.post?
    @item=Item.new(params[:item])
    respond_to do |format|
      if @item.save
        @i={:id=>@item.id}
        format.html
          format.json {render :json=>@i }
          format.xml{render :xml=>@i}
      else
        format.html
          format.json {render :json=>nil }
          format.xml{render :xml=>nil}
      end
    end
  end
  end
  def price_change
    @item=Item.find(params[:id])
    
 
     respond_to do |format|
      if @item.update_attributes(:price=>params[:price])
        @i={:id=>@item.id}
        format.html
          format.json {render :json=>true }
          format.xml{render :xml=>true}
      else
        format.html
          format.json {render :json=>nil }
          format.xml{render :xml=>nil}
      end
    end
  end


end
