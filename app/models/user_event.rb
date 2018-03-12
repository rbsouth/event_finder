class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event

  def self.going_count
  	group(:going).count[true] || 0
  end
end
