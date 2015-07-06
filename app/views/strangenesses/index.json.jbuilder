json.array!(@strangenesses) do |strangeness|
  json.extract! strangeness, :id, :strangeness_id, :strangeness_type, :strangeness_mebog, :strangeness_fvs
  json.url strangeness_url(strangeness, format: :json)
end
