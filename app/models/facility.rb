class Facility < ApplicationRecord
    belongs_to :property

    validates :title, presence: true, length: { maximum: 140 }
end
