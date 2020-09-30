class User < ApplicationRecord

    has_many :assessments
    has_many :workout_logs
    has_many :workouts, through: :workout_logs
    has_many :recovery_logs
    has_many :recoveries, through: :recovery_logs
   
    #accomplishments
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

    #workoutlog progression/streaks
    def user_workout_logs
        WorkoutLog.all.select {|workout| workout.user_id == self.id}
    end

    def total_workout_count
        self.user_workout_logs.count
    end

    def total_calories_burned
        self.user_workout_logs.map {|workout| workout.calories_burned}.sum
    end

    def total_duration
        self.user_workout_logs.map {|workout| workout.duration}.sum
    end

    def average_calories_burned
        self.total_calories_burned / self.total_workout_count
    end

    def average_duration
        self.total_duration / self.total_workout_count
    end

    def highest_calories_burned
        self.user_workout_logs.map {|workout| workout.calories_burned}.max
    end

    def longest_duration
        self.user_workout_logs.map {|workout| workout.duration}.max
    end
    
    def favorite_workout
        self.user_workout_logs.map {|workout|workout.workout.workout_type}.max
    end


    #recoverylog progression/streaks

    def user_recovery_logs
        RecoveryLog.all.select {|recovery| recovery.user_id == self.id}
    end

    def favorite_recovery
        self.user_recovery_logs.map {|recovery|recovery.recovery.recovery_type}.max
    end

    def total_recovery_count
        self.user_recovery_logs.count
    end

    def total_recovery_points
        self.user_recovery_logs.map {|recovery| recovery.recovery_points}.sum
    end

    def total_recovery_duration
        self.user_recovery_logs.map {|recovery| recovery.duration}.sum
    end

    def average_recovery_duration
        self.total_recovery_duration / self.total_recovery_count
    end

    def longest_recovery_duration
        self.user_recovery_logs.map {|recovery| recovery.duration}.max
    end

end
