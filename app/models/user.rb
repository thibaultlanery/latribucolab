class User < ApplicationRecord

    after_create :subscribe_to_newsletter
    validates :email, presence: true, uniqueness: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create
    validates :name, presence: true
  private

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end


end
