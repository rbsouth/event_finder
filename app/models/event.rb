class Event < ApplicationRecord
  belongs_to :business
  has_many :user_events
  has_many :users, through: :user_events
  has_many_attached :images

  validates :title, :city, :start, :buy_link, :business_page_link, :images, presence: true
	validates :address, presence: true, length: {minimum: 6}
	validates :state, presence: true, length: {minimum: 2}
	validates :description, presence: true, length: {minimum: 50}
  # will either return this event's user_event or will return nil
  def user_event(current_user)
  	UserEvent.find_by(user: current_user, event_id: id)
  end
end