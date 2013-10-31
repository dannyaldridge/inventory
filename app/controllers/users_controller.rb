class UsersController < ApplicationController
  # GET /users
  def index
  end
  # GET /users/:id
  def show
  end

  # GET /users/new
  def new
  	@user = User.new
  end

  # POST /users
  def create
  	@user = User.new(user_params)
    
    if @user.save!
      flash[:notice] = "Thanks for signing up"
      redirect_to root_path
    end
  end

  private 

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end


end
