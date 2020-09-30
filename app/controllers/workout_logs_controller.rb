class WorkoutLogsController < ApplicationController

    # before_action :current_workout_log, only [:show, :edit, :update, :destroy]

    def show 
        @workout_log = WorkoutLog.find(params[:id])
    end 

    def new
        @workout_log = WorkoutLog.new 
    end

    def create 
        @workout_log = WorkoutLog.new(workout_log_params)
        if @workout_log.valid?
            @workout_log.save 
            flash[:notice] = "WorkoutLog successfully created."
            redirect_to @workout_log
        else
            flash[:errors] = @workout_log.errors.full_messages
            redirect_to new_workout_log_path
        end
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
        # byebug
        @workout_log = WorkoutLog.find(params[:id])
        @user = @workout_log.user
        # byebug
        @workout_log.destroy 
        flash[:notice] = "WorkoutLog successfully deleted."
        redirect_to user_path(@user)
    end

    private

    def workout_log_params
        params.require(:workout_log).permit(:date, :duration, :calories_burned, :user_id, :workout_id)
    end

    def current_workout_log
        @workout_log = WorkoutLog.find(params[:id])
    end
    
end
