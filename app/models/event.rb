class Event < ApplicationRecord
  belongs_to :business
  has_many :users, through: :user_events
end
