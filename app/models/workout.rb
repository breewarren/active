class Workout < ApplicationRecord

    has_many :workout_logs
    has_many :users, through: :workout_logs


    def self.workout_quotes
        workout_quotes = ["test quote 1", "test quote 2"]
        workout_quotes.sample
    end


end
