class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :tweet
      t.integer :twitter_user_id
      t.date :tweet_created_at
      
      t.timestamps
    end
  end
end
