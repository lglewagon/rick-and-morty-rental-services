class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.boolean :active
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
