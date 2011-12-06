class SessionsController < ApplicationController
  #before_filter :require_login #:only => :new
  def new
    #redirect_to :controller => 'profile', :action => 'index'
  end
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url, notice: "Inloggad i systemet!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Utloggad ur systemet!"
  end

  def failure
    redirect_to root_url, alert: "Authentication failed, please try again."
  end
end
