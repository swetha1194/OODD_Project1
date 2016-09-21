class Room < ActiveRecord::Base
  ROOM_SIZES = ["Small - 4 chairs", "Medium - 6 chairs", "Large - 12 chairs"]
  BUILDING = ["Hunt Library", "D.H.Hill Library"]
  ROOM_STATUS = ["Booked", "Available"]
end
