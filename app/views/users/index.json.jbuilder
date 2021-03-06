json.array!(@users) do |user|
  json.extract! user, :id, :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :name, :role, :agency_id, :foreign_creds, :facebook_user, :twitter_handle, :address_1, :address_2, :city, :state, :postal_code, :phone_number
  json.url user_url(user, format: :json)
end
