class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :room_id
      t.string :title
      t.string :url
      t.text :description
      t.string :picture
      t.timestamps
    end
  end
end
