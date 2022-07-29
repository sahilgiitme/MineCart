class AddReferenceToProduct < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :vendor, :text
    remove_column :products, :prod_type, :string
    add_reference :products, :vendor, foreign_key: true
    add_reference :products, :product_type, foreign_key: true
  end
end
