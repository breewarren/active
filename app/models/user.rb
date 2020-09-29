class User < ApplicationRecord

    has_many :assessments
    has_many :workout_logs
    has_many :workouts, through: :workout_logs
    has_many :recovery_logs
    has_many :recoveries, through: :recovery_logs
    
end
