class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event

  scope :going_count, -> {group(:going).count[true]}
end
