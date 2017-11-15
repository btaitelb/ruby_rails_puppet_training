json.extract! note, :id, :title, :body, :completed, :created_at, :updated_at
json.url note_url(note, format: :json)
