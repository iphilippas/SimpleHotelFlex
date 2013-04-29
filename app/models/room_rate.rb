class RoomRate < ActiveRecord::Base
  belongs_to :room_type
  
  attr_accessible :days, :duration, :rate, :room_type_id
  
  validates :room_type_id, :duration, :rate, presence:true
  validates :rate, :duration, :numericality => { :greater_than_or_equal_to => 0 }
  
end
