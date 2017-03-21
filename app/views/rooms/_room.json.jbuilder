json.extract! room, :id, :name, :description, :cep, :address, :n, :ngb, :city, :country, :telephone, :celphone, :email, :facebook_profile, :instagram_profile, :open_at, :close_at, :created_at, :updated_at
json.url room_url(room, format: :json)
