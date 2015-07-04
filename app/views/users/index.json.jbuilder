json.array!(@users) do |user|
  json.extract! user, :id, :firstname, :lastname, :username, :admin
  json.url user_url(user, format: :json)
end
