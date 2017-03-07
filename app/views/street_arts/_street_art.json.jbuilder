json.extract! street_art, :id, :title, :artist, :created_at, :updated_at
json.url street_art_url(street_art, format: :json)
