get '/' do 
  @user = User.create(user_name: "AndersonEHI")
  @user_screen_name = Twitter.user(params[:user_name]).screen_name #finds screen_name of user 
  
  # @user_tweets = Twitter.user_timeline(params[:user_name], count: 10)
  # @tweets_array = Twitter.search(params[:username], count: 25).results #returns list of 25 tweets where user is mentioned (or tweets)
  erb :index
end




post '/' do
  begin  
    Twitter.update(params[:tweet])
      erb :success, layout: false
  rescue Twitter::Error
      erb :fail
   end   
  
 # "this works"
end

# post '/tweet' do 
#   @tweets = Twitter.user_timeline(params[:username])
#     @tweets.each do |tweet|
#      # Tweet.create(content: tweet[:text], twitter_user_id: @user.id) 
#     end
  
  # if request.xhr?
  #   erb :_radical_tweets, layout: false
  # else
  #   erb :tweets
  # end
# end


