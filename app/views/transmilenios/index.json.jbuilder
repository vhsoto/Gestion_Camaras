json.array!(@transmilenios) do |transmilenio|
  json.extract! transmilenio, :id, :spot, :orientation, :address, :strangeness_fvs, :strangeness_mebog, :polygon, :condition
  json.url transmilenio_url(transmilenio, format: :json)
end
