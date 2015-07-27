json.array!(@human_connections) do |human_connection|
  json.extract! human_connection, :id, :spot, :orientation, :address, :polygon, :condition, :cosec, :location, :lat, :lng
  json.url human_connection_url(human_connection, format: :json)
end
