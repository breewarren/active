class AssessmentsController < ApplicationController

    # before_action :current_assessment, only [:show, :edit, :update, :destroy]
    
    def show
        @assessment = Assessment.find(params[:id])
    end

    def new
        @assessment = Assessment.new 
    end

    def create 
        @assessment = Assessment.new(assessment_params)
        if @assessment.valid?
            @assessment.save 
            flash[:notice] = "Assessment successfully created."
            redirect_to @assessment
        else
            flash[:errors] = @assessment.errors.full_messages
            redirect_to new_assessment_path
        end
    end

    def edit 
        @assessment = Assessment.find(params[:id])
    end 

    def update 
        @assessment = Assessment.find(params[:id])
        @assessment.update(assessment_params)
        flash[:notice] = "Assessment successfully updated."
        redirect_to @assessment
    end

    def destroy 
        @assessment = Assessment.find(params[:id])
        @user = @assessment.user
        @assessment.destroy 
        flash[:notice] = "Assessment successfully deleted."
        redirect_to user_path(@user)
    end

    private

    def assessment_params
        params.require(:assessment).permit(:age, :sex, :height, :weight, :body_fat_percent, :health_goal, :user_id)
    end


    # def current_assessment
    #     @assessment = Assessment.find(params[:id])
    # end
    
end
