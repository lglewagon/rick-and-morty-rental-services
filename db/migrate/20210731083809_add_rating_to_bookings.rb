class AddRatingToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :rick_rating, foreign_key: {to_table: :ratings}
    add_reference :bookings, :morty_rating, foreign_key: {to_table: :ratings}

  end
end
