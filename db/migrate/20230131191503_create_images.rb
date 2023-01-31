class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.references :property, null: false, foreign_key: true
      t.string :url
      t.integer :order

      t.timestamps
    end
  end
end
