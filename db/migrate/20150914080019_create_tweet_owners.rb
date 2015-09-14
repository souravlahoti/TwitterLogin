class CreateTweetOwners < ActiveRecord::Migration
  def change
    create_table :tweet_owners do |t|
      t.string :uid
      t.string :name
      t.timestamps null: false
    end
  end
end
