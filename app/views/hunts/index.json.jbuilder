json.array!(@hunts) do |hunt|
  json.extract! hunt, :id, :name, :active
  json.url hunt_url(hunt, format: :json)
end
