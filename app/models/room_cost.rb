class RoomCost < ActiveRecord::Base
  belongs_to :room
  belongs_to :reservation
  
  attr_accessible :cost, :day, :reservation_id, :room_id
end
