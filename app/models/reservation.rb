# encoding: UTF-8

class Reservation < ActiveRecord::Base
  
  belongs_to :room
  belongs_to :customer
  has_many :reservation_costs, dependent: :destroy
    
  accepts_nested_attributes_for :reservation_costs

  attr_accessible :customer_id, :deposit, :description, :fromdate, :reference, :todate, :customer_name, :room_id, :customer_name, :room_type, :status, :reservation_costs_attributes
  attr_accessor :customer_name, :room_type
  
  #status: 0:pending, 1:checked_in, 2: checked_out, 4: canceled
  
  
  validates :customer_id, :room_id, :fromdate, :todate, presence: true
  
  
  validates_numericality_of :deposit
  #validate :date_validation
  
  after_create :set_new_status
  #before_update :delete_costs
  
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
  
  def set_new_status
    self.update_attribute(:status, 0)
  end
  
  
end
