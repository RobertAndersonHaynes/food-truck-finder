class Vendor < ApplicationRecord
  validates_presence_of :email, :first_name, :last_name, :phone_number, :city, :food_truck_name, :url, :location, :description

  validates :email, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
