def create_client
	@client = Twitter::REST::Client.new do |config|
  		config.consumer_key = 'Your consumer key'
  		config.consumer_secret = 'Your consumer secret key'
  		config.access_token = 'Your access token key'
  		config.access_token_secret = 'Your access token secret key'
	end
end
