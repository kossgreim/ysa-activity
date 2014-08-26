// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.easing.min
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

/*
$(function(){
<<<<<<< HEAD
   $('.datetimepicker').datetimepicker({
                    pick12HourFormat: false
                });
});
=======
    $("#phone").inputmask();
});*/

$(function() {
  console.log($('#registrations_search'));
    $("#registrations_search input").keyup(function() {
      console.log('dsd');
      $.get($("#registrations_search").attr("action"), $("#registrations_search").serialize(), null, "script");
    return false;
  });
});