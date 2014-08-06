class Registration < ActiveRecord::Base
  DAYS = [1, 2, 3]
  CITIES = ['Prague', 'Liberec', 'Brno', 'Plzen']
  COUNTRIES = ['Czech Republic', 'Slovakia']
  
  validates :name, :last_name, :email, :phone, :country, :city, presence: true
  validates :name, :last_name, :email, length: { in: 2..30 }
  validates :days, :member, :need_place, numericality: { only_integer: true }
end
