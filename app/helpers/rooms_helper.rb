module RoomsHelper
  def daily_cost(room, duration, day)
    cost = RoomRate.where("room_type_id = ? AND duration = ? AND days LIKE ?", room.room_type_id, duration, "%#{day}%")
    cost[0].rate
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
