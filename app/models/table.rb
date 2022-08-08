class Table < ApplicationRecord
  belongs_to :restaurant
  has_many :reservations

  # validations
  validates_presence_of :total_seats
end
