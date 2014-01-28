class ItemsController < ApplicationController

	def new
		@item = Item.new
	end

	def create
		@item = Item.new item_params
	
		if @item.save
  		flash[:notice] = "Item added"
  		redirect_to @item
  	else
  		render 'new'
  	end 	
	end

	def index
  	@items = Item.all
	end

	def show
  	@item = Item.find params[:id]
	end

private 

  def item_params
    params.require(:item).permit(:name, :size, :label, :description, :quantity, :date, :type, :Team, :id)
  end

end
