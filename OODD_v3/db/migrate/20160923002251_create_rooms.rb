class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :room_id
      t.string :building
      t.string :room_size

      t.timestamps
    end
    # rename_column(:rooms, :room_id, :room_number)
  end
end
