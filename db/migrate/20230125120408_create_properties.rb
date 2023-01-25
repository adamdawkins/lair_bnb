class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.decimal :lat
      t.decimal :lon
      t.string :status
      t.string :country

      t.timestamps
    end
  end
end
