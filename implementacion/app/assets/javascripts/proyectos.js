$(function(){
  $('#proyectos_conv_seleccionada').change(function(){
    var $seleccionado = $(this);
    var id = $seleccionado.val();
    if(id !== '') {
      $.ajax({
        url: '/proyectos/' + id + '/becarios_informe_final.js'
      }).done(function () {
        var $becario_seleccionado = $('#proyectos_becario_seleccionado');
        var id = $becario_seleccionado.val();
        if(id !== '') {
          document.getElementById("opciones-informe").style.visibility = "visible";
          document.getElementById("enlace_informe").style.visibility = "visible";
          document.getElementById("descargar_informe").style.visibility = "visible";
          document.getElementById("definir_evaluador").style.visibility = "visible";
          $('#enlace_informe').attr('href', '/becarios/' + id + '/informe_final');
          $('#descargar_informe').attr('href', '/becarios/' + id + '/descargar_informe_final');
          // $('#enlace_asignar_evaluador').attr('href', '/becarios/' + id + '/asignar_evaluador_informe_final');

        }
        else{
          document.getElementById("enlace_informe").style.visibility = "hidden";
          $('#enlace_informe').attr('href', '#'); 
        }
      });
    }
    else{
      $('#proyectos_becario_seleccionado').html('');
    }
  });

  $('#proyectos_becario_seleccionado').change(function(){
    var $becario_seleccionado = $(this);
    var id = $becario_seleccionado.val();
    if(id !== '') {
      document.getElementById("enlace_informe").style.visibility = "visible";
      $('#enlace_informe').attr('href', '/becarios/' + id + '/informe_final');
    }
    else{
      document.getElementById("enlace_informe").style.visibility = "hidden";
      $('#enlace_informe').attr('href', '#'); 
    }
  });

});

