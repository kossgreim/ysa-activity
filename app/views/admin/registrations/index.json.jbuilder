json.array!(@registrations) do |registration|
  json.extract! registration, :id, :name, :last_name, :email, :phone, :country, :city, :member, :need_place, :days, :comment
  json.url registration_url(registration, format: :json)
end
