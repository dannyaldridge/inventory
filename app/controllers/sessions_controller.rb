class SessionsController < ApplicationController
  def new
  	if !session[:user_id].nil?
      flash[:notice] = "You are already logged in."
      redirect_to root_path
    end
  end

  def create
  	user = User.find_by_name params[:name]
  	if user && user.authenticate(params[:password])
  		login user.name
  		flash[:notice] = "Successful login"
  		redirect_to root_path
  	else
  		render 'new'
  		flash[:notice] = "That name or password is incorrect"
  	end
  end

  def destroy
  end

  def login user_name 
   if session[:user_name]
     raise "user already logged in"
   else
     session[:user_name] = user_name
   end
 end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
