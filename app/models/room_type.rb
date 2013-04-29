class RoomType < ActiveRecord::Base
  has_many :rooms
  has_many :room_rates
  
  attr_accessible :description, :name
  
  validates :name, presence: true
end
