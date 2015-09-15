class LoginController < ApplicationController
	before_action :create_client
  def index
  	@user = User.find(session[:user_id])
  	@tweets = @client.user_timeline(@client.user.id).take(100)
  	if session[:user_id]
  		render :template => 'sessions/index'
  	else
  		render :template => 'login/index'
  	end
  end

end
