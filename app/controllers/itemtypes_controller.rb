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

def show
  @itemtype = Itemtype.find params[:id]
end

def destroy
	Itemtype.destroy params[:id]
  redirect_to itemtypes_path
end

private 

  def itemtype_params
    params.require(:itemtype).permit(:name, :id)
  end

end
