class RemoveTwoColumnFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :vendor, :text
    remove_column :users, :prod_type, :string
  end
end
