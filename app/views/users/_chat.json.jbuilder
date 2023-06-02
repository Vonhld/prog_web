json.extract! user, :id, :email, :admin, :user_id, :created_at, :updated_at
json.url user_url(user, format: :json)
