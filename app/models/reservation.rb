class Reservation < ActiveRecord::Base
  belongs_to :room
  belongs_to :customer
  
  attr_accessible :customer_id, :deposit, :description, :fromdate, :reference, :room_id, :todate
end
