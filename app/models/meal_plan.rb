class MealPlan < ActiveRecord::Base
    has_many :meals

    def find_meal id
        MealPlan.find id
    end
end