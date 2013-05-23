class ReservationCost < ActiveRecord::Base
	belongs_to :reservation
  attr_accessible :day, :rate, :reservation_id
end
