json.extract! client, :id, :name, :full_name, :alternate_names, :active, :created_at, :updated_at
json.url client_url(client, format: :json)
