json.array!(@evaluacions) do |evaluacion|
  json.extract! evaluacion, :id, :porc_sugerido_condonacion, :concepto, :evaluador, :informe
  json.url evaluacion_url(evaluacion, format: :json)
end
