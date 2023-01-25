class Property < ApplicationRecord
  belongs_to :user
  has_many :facilities

  validates :name, presence: true, length: { maximum: 140 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :status, presence: true, length: { maximum: 140 }, inclusion: {in: ['Live', 'Draft', 'Inactive']}
  validates :base_price, presence: true, numericality: { greater_than: 0, less_than: 1000000 }
  validates :cleaning_fee, presence: true, numericality: { greater_than: 0, less_than: 100 }

  def capacity
    self.facilities.sum(:capacity)
  end

end
