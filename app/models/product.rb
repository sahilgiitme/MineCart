class Product < ApplicationRecord
  belongs_to :vendor
  belongs_to :product_type
end
