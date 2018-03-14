class Event < ApplicationRecord
  belongs_to :business
  has_many :user_events
  has_many :users, through: :user_events
  has_many_attached :images

  validates :title, :address, :city, :start, :description, :buy_link, :business_page_link, :state, :images, presence: true
  validates :buy_link, :business_page_link, format: { with: /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix }
	validates :address, length: {minimum: 6}
	validates :state, length: {minimum: 2}
	validates :description, length: {minimum: 50}
  validates :images, length: {minimum: 3, maximum: 5}
  # will either return this event's user_event or will return nil
  def user_event(current_user)
  	UserEvent.find_by(user: current_user, event_id: id)
  end
end