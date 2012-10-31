class OrderlistsController < ApplicationController
  def cancelrequest
puts"=================="
puts params.inspect
    c=Customer.find_by_table_id(params[:table_id],:conditions=>{:status=>0})
    puts c.inspect
    c.orders.where(:status=>0).each do |o|
      i= o.orderlists.find(:first,:conditions=>{:item_id=>params[:item_id],:quantity=>params[:quantity]})
      if !i.nil?
        i.update_attributes(:cancel_item=>true)
        puts i
        break
      end
    end
    respond_to do|format|

          format.html
          format.json {render :json=> true}
          format.xml{render :xml=>true}
       
          
    end


  end
  def destroy

    ol=Orderlist.find(params[:id])
    ord=Order.find(ol.order_id)
    ord.total-=ol.price+(ol.price*User.find(1).tax)/100
    ord.save
    ol.destroy
    redirect_to :controller=>:hotelsessions, :action=>:show
  end
end
