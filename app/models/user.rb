class User < ApplicationRecord

    has_many :assessments
    has_many :workout_logs
    has_many :workouts, through: :workout_logs
    has_many :recovery_logs
    has_many :recoveries, through: :recovery_logs
   
    def workout_accomplishment
        "breeeee workout accomplishment"
    end

    def recovery_accomplishment
        puts "recovery accomplishment"
    end

end
