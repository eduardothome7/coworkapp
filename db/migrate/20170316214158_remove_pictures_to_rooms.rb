class RemovePicturesToRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :pictures
  end
end
