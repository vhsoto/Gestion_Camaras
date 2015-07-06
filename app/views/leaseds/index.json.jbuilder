json.array!(@leaseds) do |leased|
  json.extract! leased, :id, :spot, :orientation, :address, :strangeness_fvs, :strangeness_mebog, :polygon, :condition
  json.url leased_url(leased, format: :json)
end
