json.extract! user, :id, :name, :age, :role, :posts_counter, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
