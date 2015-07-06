json.array!(@unit_temporals) do |unit_temporal|
  json.extract! unit_temporal, :id, :spot, :orientation, :address, :strangeness_fvs, :strangeness_mebog, :polygon, :condition
  json.url unit_temporal_url(unit_temporal, format: :json)
end
