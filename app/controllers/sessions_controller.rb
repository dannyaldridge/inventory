class SessionsController < ApplicationController
  def new
  	if !session[:user_id].nil?
      flash[:notice] = "You are already logged in."
      redirect_to root_path
    end
  end

  def create
  	user = User.validate_login(user_params)

  	if User
  		sessions[:user_id] = user.id
  		redirect_to login_path
  	end
  end

  def destroy
  end

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
