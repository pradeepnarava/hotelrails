class StockCountsController < ApplicationController
  #/stock_counts/create.json,{:stock_list_item_id=>"1,2",:mrp=>"12.2,13.5",:quantity=>"3,4"}
  def create
    @stock_list_item_ids=params[:stock_list_item_id].split(",")
    @mrps=params[:mrp].split(",")
    @quantities=params[:quantity].split(",")

    @no_of_items=(0..@stock_list_item_ids.size-1)

    puts "======2====="
    @sc=StockCount.new()
    puts"=====3===="



    puts @no_of_items
    @total=0
    @no_of_items.each do|i|
      @total+=@mrps[i]*@quantities[i]

      @sc<<RemainingItem.create(:stock_list_item_id=>@stock_list_item_id[i],:mrp=>@mrps[i],:quantity=>@quantities[i])
    end
    @sc.total=@total

    respond_to do|format|
      if @sc.save
        @h={:stock_count=>@d}
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
