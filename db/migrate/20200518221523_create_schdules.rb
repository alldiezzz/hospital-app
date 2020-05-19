class CreateSchdules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.integer :doctor_id
      t.string :day
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
