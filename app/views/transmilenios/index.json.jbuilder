json.array!(@transmilenios) do |transmilenio|
  json.extract! transmilenio, :id, :spot, :orientation, :address, :polygon, :condition, :cosec, :location, :lat, :lng
  json.url transmilenio_url(transmilenio, format: :json)
end
