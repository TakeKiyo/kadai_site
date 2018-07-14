json.extract! product, :id, :image, :title, :description, :price, :shop, :created_at, :updated_at
json.url product_url(product, format: :json)
