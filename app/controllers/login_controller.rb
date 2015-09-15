class LoginController < ApplicationController

  def index
  	@user = User.find(session[:user_id])
  	if session[:user_id]
  		render :template => 'sessions/index'
  	else
  		render :template => 'login/index'
  	end
  end

end
