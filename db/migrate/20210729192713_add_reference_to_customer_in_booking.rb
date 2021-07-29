class AddReferenceToCustomerInBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :customer, foreign_key: {to_table: :users}
  end
end
