json.extract! room, :id, :room_id, :building, :room_size, :created_at, :updated_at
json.url room_url(room, format: :json)