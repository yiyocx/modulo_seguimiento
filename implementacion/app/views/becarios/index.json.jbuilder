json.array!(@becarios) do |becario|
  json.extract! becario, :id, :condonacion_beneficiarios, :cumple_requisitos, :datos_beneficiario, :info_beneficiario, :info_programa_doctoral, :info_tesis, :registro_pasantia
  json.url becario_url(becario, format: :json)
end
