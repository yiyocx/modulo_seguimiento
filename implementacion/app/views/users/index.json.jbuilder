json.array!(@users) do |user|
  json.extract! user, :id, :nombre, :becario_id
  json.url user_url(user, format: :json)
end
