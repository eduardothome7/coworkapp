json.extract! photo, :id, :room_id, :title, :url, :description, :created_at, :updated_at
json.url photo_url(photo, format: :json)
