class TweetsController < ApplicationController
	before_action :create_client
	def index
		if session[:user_id]
		@user = User.find(session[:user_id])
		@tweets = @client.user_timeline(@client.user.id).take(100)
		max_tweet = TweetOwner.count
		@max = -1
		@max_user = ""
		for i in 1..max_tweet
			user = TweetOwner.find(i)
			count = Tweet.where(:uid => user.uid).count
			if (count > @max)
				@max = count
				@max_user = user.name
			end
		end
		tweet_save	
		#render :json => @tweets		
		render 'index'	
	else
		render :template => 'login/index'
  	end
	end


	def destroy
		session.clear
		render 'login/index'
	end

	private
	def create_client
		@client = Twitter::REST::Client.new do |config|
	  		config.consumer_key = 'YXbavRvj6x8NXix57X65Y8xzL'
	  		config.consumer_secret = 'coW17AfL3CUFcizWfc4GcNGtFLamJWJYTPYK0dNGLkOcugIqAi'
	  		config.access_token = '971929843-BCHaFeCaIBQbg5baiZpTRFBJiPibTrtOlImV8Kbw'
	  		config.access_token_secret = 'M2oV1i6h7PXaZVQXmuVlZZC4bv6LpnNe9a9xkH25ulCOf'
		end
	end

	private 
	def tweet_save
		@tweets.each do |t|			new_tweet = Tweet.new
			tweet_owner = TweetOwner.new
			if !t.urls.nil?
				t.urls.each do |u|
					domain_url = Addressable::URI.parse(u.expanded_url)
					new_tweet.url = domain_url.host
					new_tweet.uid = t.user.id
					new_tweet.tweet_id = t.id
					new_tweet.tweet = t.text
					new_tweet.date = t.created_at
					new_tweet.user = t.user.name
					new_tweet.save	
					tweet_owner.uid = t.user.id
					tweet_owner.name = t.user.name
					tweet_owner.save		

				end
			end
		end
	end
end