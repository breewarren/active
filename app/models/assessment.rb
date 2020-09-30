class Assessment < ApplicationRecord
    
    belongs_to :user

    #calculations and recommendations based on assessment attributes
    def current_bmi
        @current_bmi = (self.weight * 703) / (self.height**2)
    end

    def bmi_category
        @current_bmi = (self.weight * 703) / (self.height**2)
        if @current_bmi < 18.5
            @bmi_category = "Underweight"
        elsif @current_bmi <= 24.9
            @bmi_category = "Normal Weight"
        elsif @current_bmi <= 29.9
            @bmi_category = "Overweight"
        else
            @bmi_category = "Obese"
        end
    end

    def bf_percent_category
        bf_percent = self.body_fat_percent
        sex = self.sex
        if sex == "F"
            if bf_percent <= 13
                bf_percent_category = "Essential"
            elsif bf_percent <= 20
                bf_percent_category = "Athlete"
            elsif bf_percent <= 24
                bf_percent_category = "Fitness"
            elsif bf_percent <= 31
                bf_percent_category = "Acceptable"
            else
                bf_percent_category = "Obesity"
            end
        else
            if bf_percent <= 5
                bf_percent_category = "Essential"
            elsif bf_percent <= 13
                bf_percent_category = "Athlete"
            elsif bf_percent <= 17
                bf_percent_category = "Fitness"
            elsif bf_percent <= 24
                bf_percent_category = "Acceptable"
            else
                bf_percent_category = "Obesity"
            end
        end
    end

    def recommended_bf_percent
        age = self.age
        sex = self.sex
        if sex == "F"
            if age <= 39
                recommended_bf_percent = "21-32%"
            elsif age <= 59
                recommended_bf_percent = "23-33%"
            elsif age <= 79
                recommended_bf_percent = "24-35%"
            end
        else
            if age <= 39
                recommended_bf_percent = "8-19%"
            elsif age <= 59
                recommended_bf_percent = "11-21%"
            elsif age <= 79
                recommended_bf_percent = "13-24%"
            end
        end
    end

    def max_hr
        @max_hr = 220 - self.age
    end

    def target_hr
        target_hr = @max_hr * (0.75)
        target_hr.to_i
    end

    def caloric_intake
        maintenance_calories = self.weight * 12
        if self.health_goal = "Fat Loss"
            caloric_intake = maintenance_calories - 350
        elsif self.health_goal = "Muscle Gain"
            caloric_intake = maintenance_calories + 150
        else
            caloric_intake = maintenance_calories
        end
    end

    def water_intake
        water_intake = self.weight / 2
    end

end
