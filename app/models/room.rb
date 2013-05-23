class Room < ActiveRecord::Base
  belongs_to :room_type
  has_many :room_reservations
  has_many :reservations, through: :room_reservations
  has_many :room_costs, through: :room_reservations
  
  attr_accessible :description, :name, :room_type_id, :status
      
  validates :name, :room_type_id, presence: true
  
  def status
    date = Date.today
    room = self.reservations.where("fromdate <= ? and todate >= ?", date, date)
    
    if room.empty?
      return false
    else
      return true
    end
  end  
end
