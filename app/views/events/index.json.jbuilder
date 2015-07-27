json.array!(@events) do |event|
  json.extract! event, :id, :mebog, :fvs, :date, :eventable_id, :eventable_type
  json.url event_url(event, format: :json)
end
