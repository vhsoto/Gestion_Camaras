json.array!(@news) do |news|
  json.extract! news, :id, :mebog, :fvs, :newable_id, :newable_type
  json.url news_url(news, format: :json)
end
