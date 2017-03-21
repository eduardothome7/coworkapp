class AddAttachmentUrlToRooms < ActiveRecord::Migration
  def self.up
    change_table :rooms do |t|
      t.attachment :url
    end
  end

  def self.down
    remove_attachment :rooms, :url
  end
end
