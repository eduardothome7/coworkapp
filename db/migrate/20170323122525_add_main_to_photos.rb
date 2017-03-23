class AddMainToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :main, :boolean
  end
end
