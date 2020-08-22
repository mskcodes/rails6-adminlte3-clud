json.extract! user, :id, :name, :address, :phone, :sex, :mail_address, :email_permission, :created_at, :updated_at
json.url user_url(user, format: :json)
