class ApplicationController < ActionController::Base
  protect_from_forgery

  #private
  def current_user
  	if session[:user_id]
	    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  	end
  end

  def logged_in?
    current_user.present?
  end

  helper_method :current_user, :logged_in?	#visible tambien para las vistas
end
