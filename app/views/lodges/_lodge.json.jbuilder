json.extract! lodge, :id, :name, :address, :tel, :url, :description, :available, :picture, :created_at, :updated_at
json.url lodge_url(lodge, format: :json)