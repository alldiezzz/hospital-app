class Schedule < ApplicationRecord
  belongs_to :doctor
  belongs_to :user
end
