class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { within: 0..5 }
  validates :content, :rating, presence: true
end
