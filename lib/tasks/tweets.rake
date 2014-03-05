namespace :tweets do
  desc "Clean out all tweets that do not have a user_id"
  task tweet_cleaner: :environment do
    no_user = Tweet.where(:user_id => nil)
    no_user.delete_all
    puts "Cleaned"
  end
end
