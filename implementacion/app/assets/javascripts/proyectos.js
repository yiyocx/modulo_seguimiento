$(function(){
  $('#proyectos_conv_seleccionada').change(function(){
    var $seleccionado = $(this);
    var id = $seleccionado.val();
    if(id !== '') {
      $.ajax({
        url: '/proyectos/' + id + '/becarios_informe_final.js'
      });
    }
  });
});
