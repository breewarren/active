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
        flash[:notice] = "WorkoutLog successfully created."
        redirect_to @workout_log
    end

    def edit 
        @workout_log = WorkoutLog.find(params[:id])
    end 

    def update 
        @workout_log = WorkoutLog.find(params[:id])
        @workout_log.update(workout_log_params)
        flash[:notice] = "WokroutLog successfully updated."
        redirect_to @workout_log
    end

    def destroy 
        @workout_log = WorkoutLog.find(params[:id])
        @workout_log.destroy 
        flash[:notice] = "WorkoutLog successfully deleted."
        redirect_to new_workout_log_path
    end

    private

    def workout_log_params
        params.require(:workout_log).permit(:date, :duration, :calories_burned, :user_id, :workout_id)
    end
    
end
