class Character < ApplicationRecord
  has_many :bookings
  CATEGORIES = ["Rick", "Morty"]
  validates :category, inclusion: { in: CATEGORIES}
end
