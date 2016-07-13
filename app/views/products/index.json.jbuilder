json.array!(@products) do |product|
  json.extract! product, :id, :sku, :title, :artist, :format
  json.url product_url(product, format: :json)
end
