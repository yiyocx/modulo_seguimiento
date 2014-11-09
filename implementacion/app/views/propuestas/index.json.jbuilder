json.array!(@propuestas) do |propuesta|
  json.extract! propuesta, :id, :numero, :nombre, :estado, :proyecto_id
  json.url propuesta_url(propuesta, format: :json)
end
