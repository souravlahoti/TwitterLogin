class LoginController < ApplicationController

  def index
  	if session[:user_id]
  		render :template => 'sessions/index'
  	else
  		render :template => 'login/index'
  	end
  end

end
