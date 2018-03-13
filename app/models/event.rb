class Event < ApplicationRecord
  belongs_to :business
  has_many :user_events
  has_many :users, through: :user_events
  has_many_attached :images

  validates :title, presence: true
	validates :address, presence: true, length: {minimum: 6}
	validates :city, presence: true
	validates :state, presence: true, length: {minimum: 2}
	validates :start, presence: true, date: true

  # will either return this event's user_event or will return nil
  def user_event(current_user)
  	UserEvent.find_by(user: current_user, event_id: id)
  end
end