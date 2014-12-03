json.array!(@sauces) do |sauce|
  json.extract! sauce, :id, :ingredients, :cuisine_id
  json.url sauce_url(sauce, format: :json)
end
