class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :description
      t.string :photo_url
      t.string :category
      t.boolean :availability

      t.timestamps
    end
  end
end
