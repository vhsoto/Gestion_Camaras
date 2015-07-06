json.array!(@owns) do |own|
  json.extract! own, :id, :spot, :orientation, :address, :strangeness_fvs, :strangeness_mebog, :polygon, :condition
  json.url own_url(own, format: :json)
end
