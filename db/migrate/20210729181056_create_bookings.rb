class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.boolean :active
      t.references :rick, foreign_key: {to_table: :characters}
      t.references :morty, foreign_key: {to_table: :characters}

      t.timestamps
    end
  end
end
