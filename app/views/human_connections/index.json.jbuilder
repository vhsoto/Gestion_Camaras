json.array!(@human_connections) do |human_connection|
  json.extract! human_connection, :id, :spot, :orientation, :address, :strangeness_fvs, :strangeness_mebog, :polygon, :condition
  json.url human_connection_url(human_connection, format: :json)
end
