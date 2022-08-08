class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validations
  validates_presence_of :name, :phone, :address
  validates_uniqueness_of :email
  
  enum role: %i( customer owner )
  
  has_one :restaurant
  has_many :reservations
  # has_many :restaurant_reservations, through: :restaurant, source: :reservations

  def restaurant_reservations
    raise "NoMethodError" if self.role == "customer"

    self.restaurant.reservations if self.role == "owner"
  end
end
