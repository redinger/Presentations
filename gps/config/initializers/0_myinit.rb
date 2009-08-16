HOST_DOMAIN = 'agiledisciple.com'

EXCEPTION_EMAIL = 'exceptions@agiledisciple.com'
REPLY_EMAIL = "noreply@agiledisciple.com"

if ENV["RAILS_ENV"] == "production"
  ActionMailer::Base.default_url_options[:host] = 'agiledisciple.com'
else
  ActionMailer::Base.default_url_options[:host] = 'gps.local'
end

APP_NAME='GPS Tracking'