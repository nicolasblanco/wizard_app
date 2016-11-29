class User < ApplicationRecord
  validates :email, presence: true, format: { with: /@/ }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address_1, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :phone_number, presence: true
end
