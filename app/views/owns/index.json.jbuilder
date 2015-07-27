json.array!(@owns) do |own|
  json.extract! own, :id, :spot, :orientation, :address, :polygon, :condition, :cosec, :location, :lat, :lng
  json.url own_url(own, format: :json)
end
