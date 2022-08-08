class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :tables
  has_many :reservations, through: :tables

  # validations
  validates_presence_of :phone, :address, :total_seating, :time_per_table, :name
  validates_uniqueness_of :phone, :address, :name
end
