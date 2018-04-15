class User < ApplicationRecord

  has_many :category_preferences,  dependent: :destroy

  has_many :categories, through: :category_preferences

    after_create :subscribe_to_newsletter
    after_create :send_welcome_email

    validates :email, presence: true, uniqueness: true
    validates_format_of :email, :with => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, on: :create
    validates :name, presence: true

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end

private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
