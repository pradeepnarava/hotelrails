class TablesController < ApplicationController
 def create
  if request.post?
    no_of_tables=params[:no_of_tables].to_i
    @t_ids=[]
    (1..no_of_tables).each do|x|
    @table =Table.create(:table_name=>x)
    @t_ids<<@table.id
    end
     @t={:id=>@t_ids}
     puts @t.inspect
    respond_to do |format|
     
       if !@t.nil?
        format.html
          format.json {render :json=>@t }
          format.xml{render :xml=>@t}
      else
        format.html
          format.json {render :json=>nil }
          format.xml{render :xml=>nil}
      end
    end
  end
  end
end

