json.array!(@cooking_styles) do |cooking_style|
  json.extract! cooking_style, :id, :name, :cuisine_id
  json.url cooking_style_url(cooking_style, format: :json)
end
