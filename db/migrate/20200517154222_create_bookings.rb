class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :doctor_id
      t.date :booking_time

      t.timestamps
    end
  end
end
