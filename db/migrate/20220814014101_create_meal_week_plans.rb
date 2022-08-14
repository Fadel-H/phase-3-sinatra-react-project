class CreateMealWeekPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :meal_week_plans do |t|
    t.integer "sunday_id"
    t.integer "monday_id"
    t.integer "tuesday_id"
    t.integer "wednesday_id"
    t.integer "thursday_id"
    t.integer "friday_id"
    t.integer "saturday_id"
    end
  end
end
