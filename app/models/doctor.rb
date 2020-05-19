class Doctor < ApplicationRecord
  belongs_to :hospital

  has_many :bookings
  has_many :schedules
end
