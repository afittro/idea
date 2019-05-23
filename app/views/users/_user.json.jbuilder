json.extract! user, :id, :initials, :full_name, :user_name, :role, :active, :created_at, :updated_at
json.url user_url(user, format: :json)
