json.extract! invitation, :id, :type, :company, :funding, :expositor_id, :created_at, :updated_at
json.url invitation_url(invitation, format: :json)
