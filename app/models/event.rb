class Event < ApplicationRecord
  belongs_to :business
  has_many :users, through: :user_events
  has_many_attached :images
end
