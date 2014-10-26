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
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap
//= require chosen-jquery
//= require_tree .
//= require dataTables/jquery.dataTables
//= require turbolinks  

$(function() {
  return $('.chosen-select').chosen({
    allow_single_deselect: true,
    no_results_text: 'No results matched',
    width: '200px'
  });
});

$(function(){
  $('#basicModal').on('shown.bs.modal', function (e) {
  });
});

$(function(){
  $("#proyectos_conv_seleccionada").change(function(){
    var value = this.value;
    
    $("#proyectos_becario_seleccionado").append(
      
    );
  });
});

$(function() {
  $('.datatable').dataTable({
    language: {
      processing:     "Procesando...",
      search:         "Buscar:",
      lengthMenu:     "Mostrar _MENU_ registros",
      info:           "Mostrando registros del _START_ al _END_ del total",
      infoEmpty:      "Mostrando registros del 0 al 0 de un total de 0 registros",
      infoFiltered:   "(filtrado de un total de _MAX_ registros)",
      infoPostFix:    "",
      loadingRecords: "Cargando...",
      zeroRecords:    "No se encontraron resultados",
      emptyTable:     "Ningún dato disponible en esta tabla",
      paginate: {
        first:      "Primero",
        previous:   "Anterior",
        next:       "Siguiente",
        last:       "Último"
      },
      aria: {
        sortAscending:  ": Activar para ordenar la columna de manera ascendente",
        sortDescending: ": Activar para ordenar la columna de manera descendente"
      },
      sPaginationType: "full_numbers",
    }
  });
});
