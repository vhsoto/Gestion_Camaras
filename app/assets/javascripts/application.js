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
//= require maps
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets


// function habilitarFiltro() {
//   //Habilita el filtro de busqueda
//   $('#filter').keyup(function() {
//     var rex;
//     rex = new RegExp($(this).val(), 'i');
//     $('.searchable tr').hide();
//     $('.searchable tr').filter(function() {
//       return rex.test($(this).text());
//     }).show();
//   });
// }


// $(document).on('ready page:load', habilitarFiltro);


$(document).on('ready page:load', function(){
  $('input:checkbox').bootstrapSwitch();

  setTimeout(function(){    
    $('.alert').fadeToggle(1700);
  });

  $('.datepicker').datepicker({
    format: "dd-mm-yyyy",
    language: "es",
    todayHighlight: true,
    autoclose: true,
    toggleActive: true
  });  
})