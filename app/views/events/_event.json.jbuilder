json.extract! event, :id, :title, :body, :datetime, :created_at, :updated_at
json.url event_url(event, format: :json)
