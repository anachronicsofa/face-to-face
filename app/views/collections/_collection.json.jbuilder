json.extract! collection, :id, :name, :theme, :user_id, :room_id, :created_at, :updated_at
json.url collection_url(collection, format: :json)