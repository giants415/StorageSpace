class WelcomeMailer < ApplicationMailer
  default from: "storagespacesample@gmail.com"


  def welcome_email(user)
    @user = user
    mail(to @user.email,
        subect: 'Welcome to Storage Space!') do |format|
      format.html { render 'welcome_email' }
      format.text { render text: 'welcome_email' }
    end
  end
end
