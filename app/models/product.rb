class Product < ApplicationRecord
  belongs_to :vendor
  belongs_to :product_type
  has_many :product_types
end
