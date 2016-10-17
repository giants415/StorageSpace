class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end

class WelcomeMailer < ApplicationMailer
end
