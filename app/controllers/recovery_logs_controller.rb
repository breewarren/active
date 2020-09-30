class RecoveryLogsController < ApplicationController
   
    def show 
        @recovery_log = RecoveryLog.find(params[:id])
    end 

    def new
        @recovery_log = RecoveryLog.new 
    end

    def create 
        @recovery_log = RecoveryLog.new(recovery_log_params)
        if @recovery_log.valid?
            @recovery_log.save 
            flash[:notice] = "RecoveryLog successfully created."
            redirect_to @recovery_log
        else
            flash[:errors] = @recovery_log.errors.full_messages
            redirect_to new_recovery_log_path
        end
    end

    def edit 
        @recovery_log = RecoveryLog.find(params[:id])
    end 

    def update 
        @recovery_log = RecoveryLog.find(params[:id])
        @recovery_log.update(recovery_log_params)
        flash[:notice] = "RecoveryLog successfully updated."
        redirect_to @recovery_log
    end

    def destroy 
        @recovery_log = RecoveryLog.find(params[:id])
        @recovery_log.destroy 
        flash[:notice] = "RecoveryLog successfully deleted."
        redirect_to new_recovery_log_path
    end

    private

    def recovery_log_params
        params.require(:recovery_log).permit(:date, :duration, :recovery_points, :user_id, :recovery_id)
    end
    
end
