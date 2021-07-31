class Booking < ApplicationRecord
  belongs_to :rick, class_name: "Character"
  belongs_to :morty, class_name: "Character"
  belongs_to :customer, class_name: "User"
  belongs_to :rick_rating_id, class_name: "Rating"
  belongs_to :morty_rating_id, class_name: "Rating"
end
