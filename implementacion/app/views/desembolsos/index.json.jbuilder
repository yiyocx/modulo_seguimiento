json.array!(@desembolsos) do |desembolso|
  json.extract! desembolso, :id, :estado, :fecha_solicitud, :valor, :girado, :fecha_giro, :condiciones, :proyecto_id
  json.url desembolso_url(desembolso, format: :json)
end
