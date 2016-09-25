class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    #create_table :reservations do |t|
      #t.integer :room_id
      #t.integer :member_id
      #t.date :date
      #t.datetime :start_time
      #t.datetime :end_time

      #t.timestamps
     change_column(:reservation, :start_time, :Time)
     change_column(:reservation, :end_time, :Time)
    end
  end
end
