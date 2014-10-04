json.array!(@proyectos) do |proyecto|
  json.extract! proyecto, :id, :duracion, :estado, :linea_tematica, :lugar_ejecucion, :titulo
  json.url proyecto_url(proyecto, format: :json)
end
