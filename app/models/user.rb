class User < ActiveRecord::Base

	def self.find_or_create_from_auth_hash(auth_hash)
		user = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
		user.update(
			name: auth_hash.info.name,
			token: auth_hash.credentials.token,
			profile_image: auth_hash.info.image,
			secret: auth_hash.credentials.secret,
			description: auth_hash.info.description
		)
		user
	end	
end
