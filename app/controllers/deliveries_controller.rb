class DeliveriesController < ApplicationController
  #/deliveries/create.json,{:stock_list_item_id=>"1,2",:mrp=>"12.2,13.5",:quantity=>"3,4"}
  def create
    @stock_list_item_ids=params[:stock_list_item_id].split(",")
    @mrps=params[:mrp].split(",")
    @quantities=params[:quantity].split(",")

    @no_of_items=(0..@stock_list_item_ids.size-1)

    puts "======2====="
    @d=delivery.new()
    puts"=====3===="


    
    puts @no_of_items
    @total=0
    @no_of_items.each do|i|
      @total+=@mrps[i]*@quantities[i]

      @d<<DeliveryItem.create(:stock_list_item_id=>@stock_list_item_id[i],:mrp=>@mrps[i],:quantity=>@quantities[i])
    end
    @d.total=@total

    respond_to do|format|
      if @d.save
        @h={:delivery=>@d}
        format.html
        format.json{render :json=>@h }
        format.xml{render :xml=>@h}
      else
        format.html
        format.json{render :json=>nil }
        format.xml{render :xml=>nil}
      end
    end

  end
end
