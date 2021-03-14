class Appointment < ApplicationRecord
  belongs_to :profile
  belongs_to :pet
  
end
