class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
  	current_user = User.find_by(id: session[:user_id])
  end

  def logged_in?
	 !!current_user
  end

  def authenticate
    if !logged_in?
  		redirect_to '/'
  	end
  end

  helper_method :authenticate
  helper_method :current_user
end
