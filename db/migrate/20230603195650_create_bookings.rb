class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :housting_id
      t.date :start_date
      t.date :end_date
      t.decimal :price
      t.integer :m2

      t.timestamps
    end
  end
end
