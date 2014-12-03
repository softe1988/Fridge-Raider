json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :protein, :side, :sauce_id, :cuisine_id
  json.url ingredient_url(ingredient, format: :json)
end
