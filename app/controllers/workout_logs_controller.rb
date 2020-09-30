class WorkoutLogsController < ApplicationController
    def show 
        @workout_log = WorkoutLog.find(params[:id])
    end 

    def new
        @workout_log = WorkoutLog.new 
    end

    def create 
        @workout_log = WorkoutLog.new(workout_log_params)
        @workout_log.save 
        redirect_to workout_log_path(@workout_log)
    end

    def edit 
        @workout_log = WorkoutLog.find(params[:id])
    end 

    def update 
        @workout_log = WorkoutLog.find(parmas[:id])
        @workout_log.update(workout_log_params)
        redirect_to workout_log_path(@workout_log)
    end

    def destroy 
        @workout_log = WorkoutLog.find(params[:id])
        @workout_log.destroy 
        redirect_to workout_logs_path
    end

    def workout_log_params
        params.require(:workout_log).permit(:date, :duration, :calories_burned, :user_id, :workout_id)
    end
    
end
