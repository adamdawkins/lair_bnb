class Property < ApplicationRecord
  belongs_to :user
  has_many :facilities
  has_many :reviews

  validates :name, presence: true, length: { maximum: 140 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :status, presence: true, length: { maximum: 140 }, inclusion: {in: ['Live', 'Draft', 'Inactive']}
  validates :base_price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }
  validates :cleaning_fee, presence: true, numericality: { greater_than: 0, less_than: 100 }

  def capacity
    self.facilities.sum(:capacity)
  end

  # This call MUST be able to be done as a single query rather than 6
  def average_rating
    # ((self.reviews.sum(:cleanliness_rating).to_f) + (self.reviews.sum(:host_rating).to_f) + (self.reviews.sum(:location_rating).to_f) + (self.reviews.sum(:check_in_rating).to_f) + (self.reviews.sum(:value_rating).to_f))  / self.reviews.count / 5
    self.reviews.pluck(Arel.sql("(SUM(cleanliness_rating) + SUM(host_rating) + SUM(location_rating) + SUM(check_in_rating) + SUM(value_rating)) / COUNT(*)")).first / 5
  end

end
