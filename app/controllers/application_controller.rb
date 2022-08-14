class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  post "/login" do
  
      if  User.all.exists? username: params[:username]
        if User.all.exists? password: params[:password] 
            User.all.find_by(username: params[:username]).update login_state: 1
          {status: 200, body: "you are in"}.to_json
        else
          {status: 403, body: "incorrect login"}.to_json
        end
      else
        {status: 403, body: "incorrect login"}.to_json
      end
  end

  patch "/logout" do
    user = User.all.find_by(login_state: 1)
    user.update(login_state: 0) unless user.login_state == 0
  end

  get "/meal_plan" do
   meal_plan = User.all.find_by(login_state: 1).meal_week_plan_id
   meal_plan == nil ? "you don't have a meal plan yet"
   : id_meal_plan = MealWeekPlan.all.find(meal_plan).attributes.values.drop(1)

    meal_for_week = id_meal_plan.map do |t|
      MealPlan.find t
     end
     meal_for_week.to_json
  end
end
