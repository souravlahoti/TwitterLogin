def create_client
	@client = Twitter::REST::Client.new do |config|
  		config.consumer_key = 'YXbavRvj6x8NXix57X65Y8xzL'
  		config.consumer_secret = 'coW17AfL3CUFcizWfc4GcNGtFLamJWJYTPYK0dNGLkOcugIqAi'
  		config.access_token = '971929843-BCHaFeCaIBQbg5baiZpTRFBJiPibTrtOlImV8Kbw'
  		config.access_token_secret = 'M2oV1i6h7PXaZVQXmuVlZZC4bv6LpnNe9a9xkH25ulCOf'
	end
end