config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  address:              'smtp.google.com',
  port:                 25 || 587,
  domain:               'storagespacesample@gmail.com',
  user_name:            'storagespacesample',
  password:             'GAandrew31',
  authentication:       'plain',
  enable_starttls_auto: true  }
