class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.time :avg_tweet_time
      
      t.timestamps
    end
  end
end
