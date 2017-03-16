class AddActiveToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :active, :bool
  end
end
