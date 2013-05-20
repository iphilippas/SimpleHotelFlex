jQuery ->
  $("#checkin_deposit").val 0 unless $("#checkin_deposit").val()?
  $("#customer_modal").on "hidden", ->
    $(this).data "modal", null
  $('#find_cust').on 'click', ->
    $("#customer_modal .modal-body").empty()
    $('#customer_modal').modal
      show: true
      remote: "/customers/reservation_modal?name=" + $('#reservation_customer_name').val()
  $('#select_rooms').on 'click', ->
    if $("#reservation_fromdate, #reservation_todate").val() isnt ""
      $('#room_modal').modal show: true
      $.ajax
        url: "/rooms/available_rooms"
        data:
          fromdate: $("#reservation_fromdate").val()
          todate: $("#reservation_todate").val()
        success: (data) ->
          $.each data, ->
            id = "room_" + @id
            $("#" + id).attr "disabled", true
          $("#room_modal input[type=checkbox]:checked").each ->
            $(this).removeAttr "disabled"