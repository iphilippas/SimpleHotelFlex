# encoding: UTF-8

class Reservation < ActiveRecord::Base
  
  belongs_to :rooms
  belongs_to :customer
    
  accepts_nested_attributes_for :rooms

  attr_accessible :customer_id, :deposit, :description, :fromdate, :reference, :todate, :customer_name, :room_id, :customer_name, :room_type
  attr_accessor :customer_name
  
  
  validates :customer_id, :room_id, :fromdate, :todate, presence: true
  validates :rooms, presence: true
  
  validates_numericality_of :deposit
  #validate :date_validation
  
  def customer_name
    Customer.find(customer_id).name if customer_id
  end
  
  def room_type
    room_type = Room.find(room_id).room_type_id if room_id
    RoomType.find(room_type).id if room_id 
  end

  def room_name
    Room.find(room_id).name if room_id
  end
  
  
  def date_validation
    if self.todate < self.fromdate
      errors.add(:todate, "Ημερομηνία")
      return false
    else
      return true
    end
  end
  

end
