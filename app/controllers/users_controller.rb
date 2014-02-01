class UsersController < ApplicationController
  before_filter :authenticate_user

  # GET /users/new
  def new
  	@user = User.new
  end

  # POST /users
  def create
  	@user = User.new(user_params)

    if @user.save
      flash[:notice] = 'User created successfully'
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
