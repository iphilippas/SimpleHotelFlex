# encoding: UTF-8

class Reservation < ActiveRecord::Base
  has_many :room_reservations
  has_many :rooms, through: :room_reservations
  belongs_to :customer
  
  accepts_nested_attributes_for :room_reservations
  accepts_nested_attributes_for :rooms
  
  attr_accessible :customer_id, :deposit, :description, :fromdate, :reference, :todate, :customer_name, :room_ids, :customer_name
  attr_accessor :customer_name
  
  validates :customer_id, :fromdate, :todate, presence: true
  validates :rooms, presence: true
  
  validates_numericality_of :deposit
  #validate :date_validation
  
  def customer_name
    Customer.find(customer_id).name if customer_id
  end
  
  # custom validations
  def at_least_one_rooms
    if rooms.size < 1
      errors.add :rooms, "The movie must have at least one photo attached before saving"
    end
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
