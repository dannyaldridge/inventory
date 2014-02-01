class SessionsController < ApplicationController
  def new
   unless session[:user_id].nil?
     flash[:notice] = 'You are already logged in.'
     redirect_to root_path
   end
  end

  def create
  	user = User.find_by_name session_params[:name]

  	if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id
  		flash[:notice] = 'Successful login'
  		redirect_to root_path
  	else
  		flash[:error] = 'Incorrect user name or password'
      render 'new'
  	end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'You have been logged out'
    redirect_to new_session_path
  end

  private

  def session_params
    params.require(:sessions).permit(:name, :password)
  end
end
