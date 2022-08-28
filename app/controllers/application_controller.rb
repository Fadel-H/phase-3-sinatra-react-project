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
    user = User.all.find_by(login_state: 1)
    user.meals.destroy_all

    breakfast = Meal.all.where(meal_type: "breakfast")
    snack = Meal.all.where(meal_type: "snack")
    lunch = Meal.all.where(meal_type: "lunch")
    dinner = Meal.all.where(meal_type: "dinner")

    
      UserMeal.create(user_id: user.id, meal_id:  breakfast[rand(breakfast.length)].id)
      UserMeal.create(user_id: user.id, meal_id: snack[rand(snack.length)].id)
      UserMeal.create(user_id: user.id, meal_id: lunch[rand(lunch.length)].id)
      UserMeal.create(user_id: user.id, meal_id: dinner[rand(dinner.length)].id)

      User.all.find_by(login_state: 1).meals.to_json
   end  
end
