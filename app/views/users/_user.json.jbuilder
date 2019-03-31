json.extract! user, :id, :name, :lastname, :gender, :nationality, :country, :state, :position, :mail, :phone, :languages, :type, :created_at, :updated_at
json.url user_url(user, format: :json)
