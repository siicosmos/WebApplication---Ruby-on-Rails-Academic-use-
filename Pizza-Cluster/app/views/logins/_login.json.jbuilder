json.extract! login, :id, :Email, :Password, :created_at, :updated_at
json.url login_url(login, format: :json)
