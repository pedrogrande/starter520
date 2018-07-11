json.extract! canvas_item, :id, :canvas_item_type_id, :canvas_id, :user_id, :name, :description, :created_at, :updated_at
json.url canvas_item_url(canvas_item, format: :json)
