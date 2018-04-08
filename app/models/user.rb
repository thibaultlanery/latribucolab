class User < ApplicationRecord

  after_create :send_welcome_email

    private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
