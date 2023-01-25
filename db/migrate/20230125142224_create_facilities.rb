class CreateFacilities < ActiveRecord::Migration[7.0]
  def change
    create_table :facilities do |t|
      t.string :title
      t.boolean :is_room
      t.integer :capacity
      t.string :icon
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
