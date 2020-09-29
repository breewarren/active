class Assessment < ApplicationRecord
    
    belongs_to :user

    def current_bmi
        @current_bmi = (self.weight * 703) / (self.height**2)
    end

    # def interpreted_bmi or recommended_bmi
    #     if @current_bmi < 18.5
    # end

    # def current_bf_percent
    # end

    # def recommended_bf_percent
    # end

    # def max_hr
    # end

    # def target_hr
    # end

    # def caloric_intake
    # end

    # def water_intake
    # end
end
