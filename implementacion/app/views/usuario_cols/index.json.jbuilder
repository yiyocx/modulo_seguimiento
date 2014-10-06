json.array!(@usuario_cols) do |usuario_col|
  json.extract! usuario_col, :id
  json.url usuario_col_url(usuario_col, format: :json)
end
