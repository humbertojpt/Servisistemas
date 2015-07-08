json.array!(@users) do |user|
  json.extract! user, :id, :name, :username, :cellphone, :country, :city
  json.url user_url(user, format: :json)
end
