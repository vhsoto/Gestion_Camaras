json.array!(@cameras) do |camera|
  json.extract! camera, :id, :spot, :orientation, :address, :polygon, :condition, :cosec, :location, :lat, :lng, :project, :qty
  json.url camera_url(camera, format: :json)
end
