jQuery ->
  $("#checkin_deposit").val 0 unless $("#checkin_deposit").val()?
  $("#customer_modal").on "hidden", ->
    $(this).data "modal", null
  $('#find_cust').on 'click', ->
    $("#customer_modal .modal-body").empty()
    $('#customer_modal').modal
      show: true
      remote: "/customers/reservation_modal?name=" + $('#reservation_customer_name').val()
  $("#reservation_room_type").change ->
    $.ajax
      url: "/rooms/available_rooms/"
      data:
        room_type: $("#reservation_room_type").val()
        fromdate: $("#reservation_fromdate").val()
        todate: $("#reservation_todate").val()
    $("#reservation_room_id").val("")