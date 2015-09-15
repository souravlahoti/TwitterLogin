class LoginController < ApplicationController
	before_action :create_client
  def index
  	if session[:user_id]
      @user = User.find(session[:user_id])
      @tweets = @client.user_timeline(@client.user.id).take(100)
  		render :template => 'sessions/index'
  	else
  		render :template => 'login/index'
  	end
  end

end
