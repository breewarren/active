class AssessmentsController < ApplicationController

    def show
        @assessment = Assessment.find(params[:id])
        @user = User.find(params[:id])
    end


end
