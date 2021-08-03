class Character < ApplicationRecord
  # has_many :bookings
  # belongs_to :booking
  CATEGORIES = ["Rick", "Morty"]
  validates :category, inclusion: { in: CATEGORIES}
end
