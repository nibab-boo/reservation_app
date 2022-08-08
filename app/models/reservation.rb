class Reservation < ApplicationRecord
  belongs_to :table
  belongs_to :user

  # validations
  validates_presence_of :people_count, :date, :time
  validates_uniqueness_of :date, scope: %i[time table_id]
end
