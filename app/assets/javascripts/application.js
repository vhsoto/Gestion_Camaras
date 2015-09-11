// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap-switch
//= require bootstrap-datepicker
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets


$(document).on('ready page:load', function(){

  //checkbox slider
  $('input:checkbox').bootstrapSwitch();

  //mensajes de alerta que desaparecen
  setTimeout(function(){    
    $('.alert').fadeToggle(1850);
  });

  //input tipo calendanrio
  $('.datepicker').datepicker({
    format: "dd-mm-yyyy",
    language: "es",
    todayHighlight: true,
    autoclose: true,
    toggleActive: true
  });  

  //smooth scroll
  $(document).ready(function(){
    $('a[href^="#"]').on('click',function (e) {
        e.preventDefault();

        var target = this.hash;
        var $target = $(target);

        $('html, body').stop().animate({
            'scrollTop': $target.offset().top
        }, 800, 'swing');
    });
  });  
});