class Review < ApplicationRecord
  RATES = (1..5).to_a

  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: RATES }
end
