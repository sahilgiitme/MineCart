class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string :user_name
      t.string :product_name
      t.string :vendor_name
      t.string :prod_type
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
