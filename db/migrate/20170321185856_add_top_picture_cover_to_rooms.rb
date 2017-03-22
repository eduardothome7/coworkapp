class AddTopPictureCoverToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :cover, :string
  end
end
