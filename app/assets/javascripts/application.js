// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.el
//= require jquery_nested_form


var nowTemp = new Date();
var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);

var checkin = $('#reservation_fromdate').datepicker({
   format: "dd/mm/yyyy",
   startDate: now
}).on('changeDate', function(ev) {
   if (ev.date.valueOf() > checkout.date.valueOf()) {
      var newDate = new Date(ev.date)
      newDate.setDate(newDate.getDate() + 1);
      checkout.setStartDate(newDate);
   }
   //$('#reservation_todate').removeAttr("disabled");
   checkin.hide();
   $('#reservation_todate')[0].focus();
   }).data('datepicker');

var checkout = $('#reservation_todate').datepicker({
   format: "dd/mm/yyyy",
   startDate: now
}).on('changeDate', function(ev) {
   //$('#select_rooms').removeAttr("disabled");
   checkout.hide();
}).data('datepicker');
