class TeamsController < ApplicationController
  before_filter :authenticate_user

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)

    if @team.save
      flash[:notice] = 'Team added'
      redirect_to(@team)
    else
      render('new')
    end
  end

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find params[:id]
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])

    if @team.update_attributes(team_params)
      redirect_to(@team)
    else
      render(:edit)
    end
  end

  def destroy
    Team.destroy(params[:id])
    redirect_to teams_path
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end
end
