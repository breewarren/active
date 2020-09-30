class WorkoutLog < ApplicationRecord

    belongs_to :user 
    belongs_to :workout 

    validates :date, presence: true

end
