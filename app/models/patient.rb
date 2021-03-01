class Patient < ApplicationRecord
    before_create :remove_patients

    has_many :appointments, dependent: :destroy
    has_many :doctors, through: :appointments


    has_many :notes, dependent: :destroy
    # has_many :users, through: :notes

    belongs_to :user

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def remove_patients
        if Patient.find_by(user_id: self.user_id).present?
            Patient.destroy_all
        end
    end
end


