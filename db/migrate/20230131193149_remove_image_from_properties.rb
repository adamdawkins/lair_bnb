class RemoveImageFromProperties < ActiveRecord::Migration[7.0]
  def change
    remove_column :properties, :image
  end
end