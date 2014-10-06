Observaciones Técnicas
======================

1. Se instaló bootstrap por medio de https://github.com/decioferreira/bootstrap-generators.
2. Se traducen los templates generados en lib/templates/erb/scaffold.
3. Se configura la zona horaria en application.rb `config.time_zone = 'Bogota'; config.active_record.default_timezone = :local`
4. Se configuró el i18n http://guides.rubyonrails.org/i18n.html.
   4.1. `config.i18n.default_locale = :es`
   4.2. El de rails https://github.com/svenfuchs/rails-i18n/blob/master/rails/locale/es.yml
   4.3. El de devise https://github.com/tigrish/devise-i18n/blob/master/locales/es.yml
   4.4. El de rails_admin se pone en inglés.
   4.5. TODO Verificar los inflections http://stackoverflow.com/questions/4607800/pluralize-and-singularize-for-spanish-language.

Modelos:
--------

1. apoyo_institucional: model (seed)  
  `bin/rails g model apoyo_institucional tipo:integer porc_cumplimiento:float comentario:text`

2. dificultad: model (seed)  
  `bin/rails g model dificultad tipo:integer efecto:text posible_solucion:text`

3. visita_tecnica: scaffold  
  `bin/rails g scaffold visita_tecnica observacion:text porc_cumplimiento:float tipo_proyeccion:integer`  
  Faltan los campos:
    * Indicador
    * Resultado Esperado

4. proyecto: scaffold  
  `bin/rails g scaffold proyecto duracion:integer estado:string linea_tematica:integer lugar_ejecucion:string titulo:string`  
  Faltan los campos:   
    * justificacionEstado[]
    * CDR (Certificado de Disponibilidad de Recursos)

5. desembolso: scaffold   
  `bin/rails g scaffold desembolso estado:integer fecha_solicitud:date valor:float girado:float fecha_giro:date condiciones:text proyecto:belongs_to`

6. contrato: model  
  `bin/rails g model contrato num_convenio:integer tipo_convenio:integer valor_total:float num_contrato:integer fecha_inicio:date fecha_suscripcion:date fecha_legalizacion:date fecha_finalizacion:date objeto:string plazo:integer area_responsable:string supervisor:string`  
  Faltan los campos:  
    * entidadesParticipantes[]  
    * RP  

7. informe: scaffold  
  `bin/rails g scaffold informe descripcion:text es_final:boolean fecha:date tipo:integer`  
  Faltan los campos:  
    * Informe

8. evaluador: model  
  `bin/rails g model evaluador area_conocimiento:string fecha_inicial:date fecha_final:date`  

9. evaluacion: scaffold
  `bin/rails g scaffold evaluacion porc_sugerido_condonacion:integer concepto:string evaluador:string informe:string` 

10. becario: scaffold  
  `bin/rails g scaffold becario condonacion_beneficiarios:string cumple_requisitos:boolean datos_beneficiario:string info_beneficiario:string info_programa_doctoral:string info_tesis:string registro_pasantia:string`  

11. seguimiento_academico_financiero: scaffold   
  `bin/rails g scaffold seguimiento_academico_financiero fecha:date meses_sostenimiento:integer numero_matriculas_aprobadas:integer observacion_academica:string promedio_academico:float recursos_aprobados:string semestre:integer soporte_academico:string valor_matricula:float valor_sostenimiento:float`

12. notificacion: model  
   `bin/rails g model notificacion mensaje:string`


Dudas
-----

1. Instalar y configurar el devise
2. Autorizacion basada en roles
3. Actualizar los campos de la tabla en informes_por_convocatoria.html con un solo botón
4. Llenar las opciones del select de proyectos_becario_seleccionado de acuerdo a la convocatoria que se elija
5. Desplejar la aplicación en internet
