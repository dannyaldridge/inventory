class ItemtypesController < ApplicationController

def new
	@itemtype = Itemtype.new
end

def create
	@itemtype = Itemtype.new itemtype_params
	
	if @itemtype.save
  	flash[:notice] = "Item Type added"
  	redirect_to @itemtype
  else
  	render 'new'
  end 
end

private 

  def itemtype_params
    params.require(:itemtype).permit(:name)
  end

end
