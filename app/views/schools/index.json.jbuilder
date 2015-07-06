json.array!(@schools) do |school|
  json.extract! school, :id, :spot, :orientation, :address, :strangeness_fvs, :strangeness_mebog, :polygon, :condition
  json.url school_url(school, format: :json)
end
