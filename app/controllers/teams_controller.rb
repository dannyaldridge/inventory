class TeamsController < ApplicationController

  def new
  	@team = Team.new
  end

  def create
  	@team = Team.new team_params

  	if @team.save
  		flash[:notice] = "Team added"
  		redirect_to @team
  	else
  		render 'new'
  	end
  end

  def index
    @team = Team.all
  end

  def show
    @team = Team.find params[:id]
  end

  private 

  def team_params
    params.require(:team).permit(:name)
  end


end
