class Property < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { maximum: 140 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :status, presence: true, length: { maximum: 140 }, inclusion: {in: ['Live', 'Draft', 'Inactive']}

end
