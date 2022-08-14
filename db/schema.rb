# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_14_014101) do

  create_table "meal_plans", force: :cascade do |t|
    t.string "morning_meal"
    t.string "morning_image"
    t.string "after_meal_snack"
    t.string "after_meal_image"
    t.string "noon_meal"
    t.string "noon_image"
    t.string "evening_meal"
    t.string "evening_image"
  end

  create_table "meal_week_plans", force: :cascade do |t|
    t.integer "sunday_id"
    t.integer "monday_id"
    t.integer "tuesday_id"
    t.integer "wednesday_id"
    t.integer "thursday_id"
    t.integer "friday_id"
    t.integer "saturday_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.string "meal_type"
    t.string "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.integer "meal_week_plan_id"
    t.boolean "login_state"
  end

end
