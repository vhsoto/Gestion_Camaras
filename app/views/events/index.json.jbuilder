json.array!(@events) do |event|
  json.extract! event, :id, :mebog, :fvs, :date, :camera_id
  json.url event_url(event, format: :json)
end
