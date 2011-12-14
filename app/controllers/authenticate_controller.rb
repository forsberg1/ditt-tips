class AuthenticateController < ApplicationController
  def index
    #redirect_to :controller => 'profile', :action => 'index'
  end
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to :controller => "profile", :action => "index", notice: "Inloggad i systemet!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Utloggad ur systemet!"
  end

  def failure
    redirect_to root_url, alert: "Fel inloggningsuppgifter!."
  end
end
