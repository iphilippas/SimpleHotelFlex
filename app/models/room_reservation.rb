class RoomReservation < ActiveRecord::Base
  belongs_to :room
  belongs_to :reservation
  
  attr_accessible :rate, :reservation_id, :room_id
end
