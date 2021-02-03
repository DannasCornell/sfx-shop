class User < ApplicationRecord
  after_create :subscribe_to_newsletter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :orders
  has_one :cart, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  private
  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).call
  end
end
