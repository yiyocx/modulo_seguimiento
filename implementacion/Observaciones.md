Observaciones Técnicas
======================

1. Se instaló bootstrap por medio de https://github.com/decioferreira/bootstrap-generators.
2. Se traducen los templates generados en lib/templates/erb/scaffold.
3. Se configura la zona horaria en application.rb `config.time_zone = 'Bogota'; config.active_record.default_timezone = :local`
4. Se configuró el i18n http://guides.rubyonrails.org/i18n.html.
   1. `config.i18n.default_locale = :es`
   2. El de rails https://github.com/svenfuchs/rails-i18n/blob/master/rails/locale/es.yml
   3. El de devise https://github.com/tigrish/devise-i18n/blob/master/locales/es.yml
   4. El de rails_admin se pone en inglés.
   5. TODO Verificar los inflections http://stackoverflow.com/questions/4607800/pluralize-and-singularize-for-spanish-language.

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