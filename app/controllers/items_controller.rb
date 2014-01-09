class ItemsController < ApplicationController

	def new
		@item = Item.new
	end

	def create
		
	end

private 

  def item_params
    params.require(:item).permit(:name, :size, :label, :description, :quantity, :date, :type, :Team, :id)
  end

end
