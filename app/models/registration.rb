class Registration < ActiveRecord::Base
  #data for select
  DAYS = [3, 2, 1]
  CITIES = ['Prague', 'Liberec', 'Brno', 'Plzen']
  COUNTRIES = ['Czech Republic', 'Slovakia']
  
  #pagination
  self.per_page = 10
  
  validates :name, :last_name, :email, :phone, :country, :city, presence: true
  validates :name, :last_name, :email, length: { in: 2..30 }
  validates :phone, numericality: true, length: { minimum: 10, maximum: 15 }
  validates :days, :member, :need_place, numericality: { only_integer: true }
  validate  :email_regex
  
  private 
  
  def email_regex
    if email.present? and not email.match(/\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/)
      errors.add :email, "This is not a valid email format"
    end
  end
end
