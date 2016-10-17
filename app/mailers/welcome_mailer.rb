class WelcomeMailer < ApplicationMailer
  default from: "storagespacesample@gmail.com"


  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Storage Space!')
  end
end
