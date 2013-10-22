class User < ActiveRecord::Base
   has_many :tweets

  # def fetch_tweets_from_data_base(user_name)
  #   user = TwitterUser.find_by_user_name(user_name) # find user in database
  #   array_of_user_tweets = user.tweets.map(&:tweet) # array of tweets from user
  # end

  def fetch_tweeets!
    @tweets.each do |tweet|
      Tweet.create(text: tweet.content)
      p "*"*50 
    end
  end
 
end
