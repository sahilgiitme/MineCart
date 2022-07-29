class AddProdPriceToReport < ActiveRecord::Migration[7.0]
  def change
    add_column :reports, :product_price, :integer
  end
end
