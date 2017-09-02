json.extract! category, :id, :todo_id, :task_id, :name, :created_at, :updated_at
json.url category_url(category, format: :json)
