class UserMailer < ActionMailer::Base
  layout 'mailer'
  default from: "from@example.com"
  default subject: 'Welcome to Tweeter'
  def welcome(user)
    @user = user
    mail(to: @user.email)
  end
  def newsletter(params)
    @params = params
    mail(to: @params[:email])
  end
end
