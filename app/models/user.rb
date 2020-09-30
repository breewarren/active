class User < ApplicationRecord

    has_many :assessments
    has_many :workout_logs
    has_many :workouts, through: :workout_logs
    has_many :recovery_logs
    has_many :recoveries, through: :recovery_logs
   
    def workout_accomplishment
        user_workout_logs = WorkoutLog.all.select {|workout| workout.user_id == self.id}.count
        if user_workout_logs >= 5
            "You have achieved the Workout Accomplishent of 5 WorkoutLogs!"
        else
            "You are only #{5 - user_workout_logs} WorkoutLogs away from reaching the Accomplishment of 5 entries!"
        end
    end

    def recovery_accomplishment
        user_recovery_logs = RecoveryLog.all.select {|recovery| recovery.user_id == self.id}
        user_recovery_points = user_recovery_logs.map {|recovery| recovery.recovery_points}.sum
        if user_recovery_points >= 15
            "You have achieved the Recovery Accomplishent of 15 Recovery Points!"
        else
            "You are only #{15 - user_recovery_points} Recovery Points away from reaching the Accomplishment of 15 entries!"
        end
    end

end
