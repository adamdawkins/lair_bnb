class Review < ApplicationRecord
  belongs_to :user
  belongs_to :property

  validates :body, presence: true, length: { maximum: 500 }
  validates :cleanliness_rating, presence:true, numericality: { greater_than: 0, less_than: 6 }
  validates :host_rating, presence:true, numericality: { greater_than: 0, less_than: 6 }
  validates :location_rating, presence:true, numericality: { greater_than: 0, less_than: 6 }
  validates :check_in_rating, presence:true, numericality: { greater_than: 0, less_than: 6 }
  validates :value_rating, presence:true, numericality: { greater_than: 0, less_than: 6 }

  def overall_rating
    (self.cleanliness_rating.to_f + self.host_rating.to_f + self.location_rating.to_f + self.check_in_rating.to_f + self.value_rating.to_f) / 5
  end

end
