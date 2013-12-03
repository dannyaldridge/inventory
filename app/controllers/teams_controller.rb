class TeamsController < ApplicationController

  def new
  	@team = Team.new
  end

  def create
  	@team = Team.new team_params
  	
  end




end
