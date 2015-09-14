class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet_id
      t.string :uid
      t.string :url
      t.string :tweet
      t.string :date
      t.string :user
      t.timestamps null: false
    end
  end
end
