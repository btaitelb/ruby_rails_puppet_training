json.extract! config, :id, :server_url, :server_port, :game_type, :created_at, :updated_at
json.url config_url(config, format: :json)
