class CreateRooms < ActiveRecord::Migration
  def change
    #create_table :rooms do |t|
    #  t.integer :room_id
   #   t.integer :size
   #   t.string :building
   #   t.string :status

    #  t.timestamps null: false
    change_column(:rooms, :size, :string)
    #end
  end
end
