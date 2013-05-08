jQuery ->
  $('#find_cust').click ->
    $('#customer_modal').modal
      show: true
      remote: "/customers/reservation_modal?name=" + $('#reservation_customer_name').val() 
