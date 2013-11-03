class SessionsController < ApplicationController
  def new
  	if !session[:user_id].nil?
      flash[:notice] = "You are already logged in."
      redirect_to root_path
    end
  end

  def create
  end

  def destroy
  end
end
