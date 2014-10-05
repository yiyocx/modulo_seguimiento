json.array!(@informes) do |informe|
  json.extract! informe, :id, :descripcion, :es_final, :fecha, :tipo
  json.url informe_url(informe, format: :json)
end
