json.array!(@visita_tecnicas) do |visita_tecnica|
  json.extract! visita_tecnica, :id, :observacion, :porc_cumplimiento, :tipo_proyeccion
  json.url visita_tecnica_url(visita_tecnica, format: :json)
end
