class CreateHousings < ActiveRecord::Migration[7.0]
  def change
    create_table :housings do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.integer :amount_bathrooms
      t.integer :amount_rooms
      t.integer :msquare
      t.string :city
      t.string :state
      t.string :address

      t.timestamps
    end
  end
end
