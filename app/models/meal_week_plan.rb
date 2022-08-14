class MealWeekPlan < ActiveRecord::Base
    has_many :meal_plans
    has_many :meals, through: :meal_plans
    belongs_to :user

end