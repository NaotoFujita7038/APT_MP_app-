class CreateCalendarReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :calendar_reservations do |t|
      t.integer :customer_id
      t.time :start_time
      t.time :end_time
      t.text :reservation_details

      t.timestamps
    end
  end
end
