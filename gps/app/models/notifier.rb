class Notifier < ActionMailer::Base
  def password_reset_instructions(user)
    subject "Password Reset Instructions"
    from APP_CONFIG["reply_email"]
    recipients user.email
    sent_on Time.now
    body :edit_password_reset_url => edit_password_reset_url(user.perishable_token)
  end

  def welcome_email(user)
    subject "Welcome to #{APP_CONFIG['app_name']}!"
    from APP_CONFIG["reply_email"]
    recipients user.email
    sent_on Time.now
    body :user => user
  end
end
