class RemoveImagesPicturesColumnFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :images
    remove_column :rooms, :pictures
    remove_column :rooms, :picture
  end
end
