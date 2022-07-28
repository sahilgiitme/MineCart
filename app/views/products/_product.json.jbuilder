json.extract! product, :id, :name, :prod_type, :vendor, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
