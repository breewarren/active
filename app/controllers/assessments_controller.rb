class AssessmentsController < ApplicationController
    
    def show
        @assessment = Assessment.find(params[:id])
    end

    def new
        @assessment = Assessment.new 
    end

    def create 
        @assessment = Assessment.new(assessment_params)
        @assessment.save 
        flash[:notice] = "Assessment successfully created."
        redirect_to @assessment
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
        @assessment.destroy 
        flash[:notice] = "Assessment successfully deleted."
        redirect_to new_assessment_path
    end

    private

    def assessment_params
        params.require(:assessment).permit(:age, :sex, :height, :weight, :body_fat_percent, :health_goal, :user_id)
    end
    
end
