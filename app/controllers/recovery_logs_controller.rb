class RecoveryLogsController < ApplicationController
    def show 
        @recovery_log = RecoveryLog.find(params[:id])
    end 

    def new
        @recovery_log = RecoveryLog.new 
    end

    def create 
        @recovery_log = RecoveryLog.new(recovery_log_params)
        @recovery_log.save 
        redirect_to recovery_log_path(@recovery_log)
    end

    def edit 
        @recovery_log = RecoveryLog.find(params[:id])
    end 

    def update 
        @recovery_log = RecoveryLog.find(parmas[:id])
        @recovery_log.update(recovery_log_params)
        redirect_to recovery_log_path(@recovery_log)
    end

    def destroy 
        @recovery_log = RecoveryLog.find(params[:id])
        @recovery_log.destroy 
        redirect_to recovery_logs_path
    end

    def recovery_log_params
        params.require(:recovery_log).permit(:date, :duration, :recovery_points, :user_id, :recovery_id)
    end
    
end
