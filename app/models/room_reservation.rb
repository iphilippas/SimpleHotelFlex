class RoomReservation < ActiveRecord::Base
  belongs_to :room
  belongs_to :reservation
  has_many :room_costs, after_remove: :remove_cost
  
  after_create :create_room_costs 
  
  attr_accessible :rate, :reservation_id, :room_id

  
  #Create the rooms costs
  def create_room_costs
    fromdate = self.reservation.fromdate
    todate = self.reservation.todate
    duration = (todate - fromdate).to_i + 1
    duration = 3 if duration > 3
    
    (fromdate..todate).each do |day|
      rate = RoomRate.where("days LIKE ? and duration = ? and room_type_id = ?","%#{I18n.l(day, :format => "%A")}%", duration, self.room.room_type_id).first
      cost = rate.rate
      RoomCost.create({day: day, cost: cost, room_reservation_id: self.id})
    end 
  end
  
  def remove_cost(room_reservation)
    RoomCost.delete_all(room_reservation_id: room_reservation.id)
  end

end
