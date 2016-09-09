json.extract! cour, :id, :title, :url, :body, :created_at, :updated_at
json.url cour_url(cour, format: :json)