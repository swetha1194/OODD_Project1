json.extract! reservation, :id, :room_id, :member_id, :date, :start_time, :end_time, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)