class User < ApplicationRecord
	has_many :user_events
  has_many :events, through: :user_events

  validates :email, presence: true, uniqueness: true
	validates :password, presence: true, length: {minimum: 6}
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :city, presence: true
	validates :state, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def saved_events
  	Event.joins(:user_events).merge(user_events.where(saved: true))
  end
end