json.array!(@leaseds) do |leased|
  json.extract! leased, :id, :spot, :orientation, :address, :polygon, :condition, :cosec, :location, :lat, :lng
  json.url leased_url(leased, format: :json)
end
