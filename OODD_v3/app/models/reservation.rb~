class Reservation < ApplicationRecord
  validates :member_id ,presence: true,numericality: true
  validates :room_id ,presence: true , numericality: true
  belongs_to :member
  belongs_to :room
end
