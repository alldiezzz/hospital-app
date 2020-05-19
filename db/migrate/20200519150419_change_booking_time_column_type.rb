class ChangeBookingTimeColumnType < ActiveRecord::Migration[6.0]
  def up
    change_column :bookings, :booking_time, 'timestamp USING CAST(booking_time AS timestamp)'
  end

  def down
    change_column :bookings, :booking_time, 'varchar USING CAST(booking_time AS varchar)'
  end
end
