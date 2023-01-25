class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :body
      t.float :cleanliness_rating
      t.float :host_rating
      t.float :location_rating
      t.float :check_in_rating
      t.float :value_rating
      t.references :user, null: false, foreign_key: true
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
