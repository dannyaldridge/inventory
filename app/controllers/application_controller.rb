class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def self.before_filter(*args)
    @@before_filters = args
    super
  end

  def self.before_filter_collection
    @@before_filters ||= []
  end

 def authenticate_user
   redirect_to new_session_path, notice: "you must be logged in to view that page" if current_user.nil?
 end 

 def current_user
  @current_user = User.find session[:user_id] if session[:user_id].present?
 end

end
