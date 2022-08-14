class CreateMealPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :meal_plans do |t|
      t.string :morning_meal
      t.string :morning_image
      t.string :after_meal_snack
      t.string :after_meal_image
      t.string :noon_meal
      t.string :noon_image
      t.string :evening_meal
      t.string :evening_image

    end
  end
end
