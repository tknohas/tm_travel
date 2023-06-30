class Room < ApplicationRecord
  belongs_to :user
  attachment :room_image
  has_many :reservations
end
