class RemoveUrlFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :url
    add_column :rooms, :avatar, :string
  end
end
