class Customer < ActiveRecord::Base
  has_many :reservations
  
  attr_accessible :address, :description, :email, :name, :phone, :vip
  
  validates :name, presence: true
  validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i
  
end
