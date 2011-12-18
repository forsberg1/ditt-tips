class ApplicationController < ActionController::Base
  protect_from_forgery
private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  def require_login
    if current_user
    else
      redirect_to authenticate_url, alert:  "Var god logga in"
    end
  end
end
