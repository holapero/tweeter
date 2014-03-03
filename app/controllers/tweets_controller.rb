class TweetsController < ApplicationController
  def create
    @tweet = current_user.tweets.build(tweet_params)
    
    if @tweet.save
      redirect_to user_path(current_user), :success => 'You made a new tweet'
    else
      redirect_to user_path(current_user), :error => 'Your tweet did not go through'
    end
  end

  def destroy
    @tweet.destroy
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, :user_id)
  end
  # def set_tweet
  #   @tweet = Tweet.find(params[:id])
  # end
end



