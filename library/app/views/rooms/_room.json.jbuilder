json.extract! room, :id, :room_id, :size, :building, :status, :created_at, :updated_at
json.url room_url(room, format: :json)