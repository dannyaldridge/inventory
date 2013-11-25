class SessionsController < ApplicationController
  def new
   unless session[:user_id].nil?
     flash[:notice] = "You are already logged in."
     redirect_to root_path
   end
  end

  def create
  	user = User.find_by_name params[:name]

  	if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
  		flash[:notice] = "Successful login"
  		redirect_to root_path
  	else
  		flash[:error] = "Incorrect user name or password"
      render 'new'
  	end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
