ActionMailer::Base.smtp_settings = {
  :address      => "smtp.gmail.com",
  :port         => 587,
  :domain       => "gmail.com",
  :user_name    => "storagespacesample@gmail.com",
  :password     => Rails.application.secrets.secret_email_pw,
  :authentication => "plain",
  :enable_starttls_auto => true
}
 
