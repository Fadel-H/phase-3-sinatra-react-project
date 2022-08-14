class User < ActiveRecord::Base
    has_many :meal_week_plans

    def pick_meal_plan meal_week_plan_id
        self.update meal_week_plan_id: MealWeekPlan.all.find(meal_week_plan_id).id
    end
end