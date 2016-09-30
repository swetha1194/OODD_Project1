class Room < ActiveRecord::Base
  ROOM_SIZES = ["Small - 4 chairs", "Medium - 6 chairs", "Large - 12 chairs"]
  ROOM_BUILDING = ["Hunt Library", "D.H.Hill Library"]
  ROOM_STATUS = ["Booked", "Available"]
  validates_uniqueness_of :room_id, :scope => :building
  validates :room_id, :presence => true
end
