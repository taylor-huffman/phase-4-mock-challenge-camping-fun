class Signup < ApplicationRecord

    belongs_to :camper
    belongs_to :activity

    validates :time, inclusion: 0..23

    # validate :time_between_0_and_23

    # def time_between_0_and_23
    #     if time < 1 || time > 22
    #         errors.add(:time, "must be between 0 and 23")
    #     end
    # end
end
