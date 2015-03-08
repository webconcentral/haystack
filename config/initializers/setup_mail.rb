ActionMailer::Base.smtp_settings = {
  :address              => "smtp.emailsrvr.com",
  :port                 => 587,
  :domain               => "http://haystackleads.com/",
  :user_name            => "leads@haystackleads.com",
  :password             => "hayman",
  :authentication       => "plain",
  :enable_starttls_auto => true
}


ActionMailer::Base.default_url_options[:host] = "localhost:3000"
# Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
