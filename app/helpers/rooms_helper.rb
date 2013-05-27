module RoomsHelper
  def daily_cost(room_type, duration, day)
    cost = RoomRate.where("room_type_id = ? AND duration = ? AND days LIKE ?", room_type, duration, "%#{day}%")
    if cost[0].nil?
      return 0
      
    else
      return cost[0].rate
    end
  end
  
  def room_class(room)
    html = ""
    if (room.status)
       html = "alert-error"
    else
      html = "alert-success"
    end 
  end
end
