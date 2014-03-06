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
   def newsletter
    UserMailer.newsletter(params).deliver
    redirect_to root_path
    flash[:notice] = "Thanks for signing up"
  end
end

