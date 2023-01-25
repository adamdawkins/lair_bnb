class AddDefaultPriceAndImageToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :image, :string
    add_column :properties, :base_price, :decimal
  end
end
