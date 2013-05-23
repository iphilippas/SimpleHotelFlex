class RoomCost < ActiveRecord::Base
  belongs_to :room
  belongs_to :reservation
  belongs_to :room_reservation
  
  attr_accessible :cost, :day, :room_reservation_id
end
