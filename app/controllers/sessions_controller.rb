class SessionsController < ApplicationController
  def new
    # if !session[:user_id].nil?
    #   flash[:notice] = "You are already logged in."
    #   redirect_to root_path
    # end
  end

  def create
  	user = User.find_by_id params[:id]
  	if user && user.authenticate(params[:password])
  		login user.id
  		flash[:notice] = "Successful login"
  		redirect_to root_path
  	else
  		flash[:notice] = "That name or password is incorrect"
      render 'new'
  	end
  end

  def destroy
  end

  def login user_id
   if session[:user_id]
     raise "user already logged in"
   else
     session[:user_id] = user_id
   end
 end

  private

  def user_params
    params.require(:user).permit(:id, :password)
  end

end
