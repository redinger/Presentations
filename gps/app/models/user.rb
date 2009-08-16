class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.require_password_confirmation = false
  end

  after_create :send_welcome_email

  private
  def deliver_password_reset_instructions!
    reset_perishable_token!
    Notifier.deliver_password_reset_instructions(self)
  end

  def send_welcome_email
    Notifier.deliver_welcome_email(self)
  end

end
