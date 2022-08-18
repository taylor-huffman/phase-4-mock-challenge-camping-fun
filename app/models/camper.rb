class Camper < ApplicationRecord

    has_many :signups
    has_many :activities, through: :signups

    validates :name, presence: true
    validates :age, inclusion: 8..18
    
    # validate :age_8_to_18

    # def age_8_to_18
    #     if age < 8 || age > 18
    #         errors.add(:age, "must be between 8 and 18")
    #     end
    # end
end
