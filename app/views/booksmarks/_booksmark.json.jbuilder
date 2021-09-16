json.extract! booksmark, :id, :name, :url, :created_at, :updated_at
json.url booksmark_url(booksmark, format: :json)
