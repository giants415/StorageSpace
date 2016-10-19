class ApplicationMailer < ActionMailer::Base
  default from: 'storagespacesample@gmail.com'
  layout 'mailer'
end

class WelcomeMailer < ApplicationMailer
end
