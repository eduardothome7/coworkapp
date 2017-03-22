class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.string :cep
      t.string :address
      t.string :n
      t.string :ngb
      t.string :city
      t.string :country
      t.string :telephone
      t.string :celphone
      t.string :picture
      t.string :email
      t.string :facebook_profile
      t.string :instagram_profile
      t.datetime :open_at
      t.datetime :close_at
      t.string :cover
      t.string :address
      t.string :slug
      t.bool :active
      t.timestamps
    end
  end
end
