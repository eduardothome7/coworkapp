class AddPicturesToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :pictures, :json
  end
end
