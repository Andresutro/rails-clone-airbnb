json.extract! housing, :id, :name, :user_id, :price, :amount_bathrooms, :amount_rooms, :msquare, :city, :state, :address, :created_at, :updated_at
json.url housing_url(housing, format: :json)
