json.array!(@hunters) do |hunter|
  json.extract! hunter, :id, :start_time, :finish_time
  json.url hunt_hunter_url(hunter, hunt_id: hunter.hunt_id, format: :json)
end
