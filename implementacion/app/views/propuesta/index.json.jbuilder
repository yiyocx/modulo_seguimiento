json.array!(@propuesta) do |propuestum|
  json.extract! propuestum, :id, :numero, :nombre, :estado, :proyecto_id
  json.url propuestum_url(propuestum, format: :json)
end
