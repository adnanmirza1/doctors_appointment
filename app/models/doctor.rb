class Doctor < ApplicationRecord
    has_one :appointment
    
    belongs_to :user
end
