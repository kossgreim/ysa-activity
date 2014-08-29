class Registration < ActiveRecord::Base
  #data for select
  DAYS = [3, 2, 1]
  CITIES = ['Prague', 'Liberec', 'Brno', 'Plzen']
  COUNTRIES = ['Czech Republic', 'Slovakia']
  ARRIVING = ['Friday', 'Saturday', 'Sunday']
  

  #pagination
  self.per_page = 10
  
  validates :name, :last_name, :email, :phone, :country, :city, :gender, :arriving, presence: true
  validates :name, :last_name, :email, length: { in: 2..30 }
  validates :phone, numericality: true, length: { minimum: 10, maximum: 15 }
  validates :days, :member, :need_place, numericality: { only_integer: true }
  validate  :email_regex
  before_save { self.email = email.downcase }
  
  def full_name
    "#{self.name} #{self.last_name}"
  end

  def self.search(search)
    where("name ilike ? or last_name ilike ? or email ilike ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end
  
  private 
  
  def filter(filtering_params)
    results = self.where(nil)
    filtering_params.each do |key, value|
      results = results.public_send(key, value) if value.present?
    end
    results
  end
  
  def email_regex
    if email.present? and not email.match(/\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/)
      errors.add :email, "This is not a valid email format"
    end
  end
end
