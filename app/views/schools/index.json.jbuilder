json.array!(@schools) do |school|
  json.extract! school, :id, :spot, :orientation, :address, :polygon, :condition, :cosec, :location, :lat, :lng
  json.url school_url(school, format: :json)
end
