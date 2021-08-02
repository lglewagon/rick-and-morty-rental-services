class AddColumnToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :main_character_id, :integer
    add_column :bookings, :associated_character_id, :integer
  end
end
