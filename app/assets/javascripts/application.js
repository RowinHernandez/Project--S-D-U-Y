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
//= require jquery.ui.all
//= require jquery.ui.effect-fold
//= require jquery-ui-timepicker-addon
//= require_tree .


$(document).ready(function() {
  $('.datetime_select').each(function( index ) {
    var date_field = $(this);
    var alt_name = "#" +date_field.attr("alt_datetime_field");
    date_field.datetimepicker({
      timeFormat: "h:mm tt",
      format: "yy-mm-dd",
      separator: " ",
      altField: alt_name,
      altFieldTimeOnly: false,
      altFormat: "yy-mm-dd",
      altTimeFormat: "hh:mm",
      altSeparator: " ",
      autoclose:true,
      language:"es"
    });
  });

});