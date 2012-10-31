class StockListItemsController < ApplicationController
  #/stock_list_items/create.json,{:name=>"<item_name>"
  def create
    @stli= StockListItem.new(:name=>params[:name])
    respond_to do|format|
      if @stli.save
        format.html
        format.json {render :json=>true}
        format.xml {render :xml=>true}
      else
        format.html
        format.json {render :json=>false}
        format.xml {render :xml=>false}
      end
    end
  end
  #/stock_list_items/show.json
  def show
    @stli=StockListItem.all
    @stli={:itemlist=>@stli}
    respond_to do|format|
      format.html
      format.json {render :json=>@stli}
      format.xml {render :xml=>@stli}
    end
  end
end
