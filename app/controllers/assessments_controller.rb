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
        redirect_to assessment_path(@assessment)
    end

    def edit 
        @assessment = Assessment.find(params[:id])
    end 

    def update 
        @assessment = Assessment.find(parmas[:id])
        @assessment.update(assessment_params)
        redirect_to assessment_path(@assessment)
    end

    def destroy 
        @assessment = Assessment.find(params[:id])
        @assessment.destroy 
        redirect_to assessments_path
    end

    def assessment_params
        params.require(:assessment).permit(:age, :sex, :height, :weight, :body_fat_percent, :health_goal, :user_id)
    end
    
end
