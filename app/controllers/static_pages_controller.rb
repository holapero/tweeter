class StaticPagesController < ApplicationController
  layout 'tweeter'
  
  def tweeter
  end
  def about
  end
  def tos
  end
  def privacy
  end
  def welcome
    UserMailer.welcome(current_user).deliver
    redirect_to root_path, notice: 'Thanks for joining.'
  end
end

