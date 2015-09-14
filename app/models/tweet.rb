class Tweet < ActiveRecord::Base
	validates_uniqueness_of :tweet_id
end
