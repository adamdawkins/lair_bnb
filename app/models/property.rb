class Property < ApplicationRecord
  belongs_to :user
  has_many :facilities

  validates :name, presence: true, length: { maximum: 140 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :status, presence: true, length: { maximum: 140 }, inclusion: {in: ['Live', 'Draft', 'Inactive']}
  # validates :base_price, presence: true #, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }

  def capacity
    self.facilities.sum(:capacity)
  end

end
