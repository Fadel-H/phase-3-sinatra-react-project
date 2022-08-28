puts "🌱 Seeding spices..."

meal1 = Meal.create(name:"Avocado Egg Toast", meal_type: "breakfast", image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2021%2F03%2F01%2Fegg-salad-avocado-toasts-2000.jpg") 
meal2 =Meal.create(name:"blueberries", meal_type: "snack", image: "https://images-prod.healthline.com/hlcmsresource/images/AN_images/blueberries-1296x728-feature.jpg")
meal3 =Meal.create(name:"Chicken and rice", meal_type: "lunch", image: "https://www.simplyrecipes.com/thmb/A0clzs4DNOB_XvCRVHDoEWSeBio=/2000x1333/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2014__06__Chicken-Rice-Casserole-LEAD-2-01230ff397ac4b35958e8ffe9857fca6.jpg") 
Meal.create(name:"oranges", meal_type: "snack", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Oranges_-_whole-halved-segment.jpg/1200px-Oranges_-_whole-halved-segment.jpg")
meal4 = Meal.create(name:"red lentil curry", meal_type:"dinner", image: "https://healthynibblesandbits.com/wp-content/uploads/2020/04/Red-Lentil-Curry-FF.jpg")
Meal.create(name:"Greek Meatball Mezze Bowl", meal_type:"lunch", image: "https://carlsbadcravings.com/wp-content/uploads/2021/07/Greek-Meatballs-Keftedes-4a.jpg")
Meal.create(name:"Wild Rice & chicken", meal_type:"dinner", image: "https://www.nospoonnecessary.com/wp-content/uploads/2019/01/Slow-Cooker-Creamy-Chicken-Wild-Rice-Soup-140.jpg")
Meal.create(name:"Asian Tilapia with Stir-Fried Green Beans", meal_type:"dinner", image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2018%2F03%2F06%2F5245892.jpg")
Meal.create(name:"almonds", meal_type:"snack", image: "https://www.eatthis.com/wp-content/uploads/sites/4/2021/08/secret-effects-eating-almonds.jpg?quality=82&strip=1")
Meal.create(name:"Bananas", meal_type:"snack", image: "https://cdn1.sph.harvard.edu/wp-content/uploads/sites/30/2018/08/bananas-1354785_1920.jpg")
meal10 =Meal.create(name:"cereal", meal_type:"breakfast", image: "https://www.verywellhealth.com/thmb/6ETbfskE79RGe5853dGPNcN_6Og=/500x350/filters:no_upscale():max_bytes(150000):strip_icc()/30D7A016-ABA5-48DD-BE39-3E7A223A03BF-96f2ba9e6c724dc9b2ba638b0c0f44a2.jpeg")
Meal.create(name:"Oat meal", meal_type:"breakfast", image: "https://www.veggieinspired.com/wp-content/uploads/2015/05/healthy-oatmeal-berries-featured.jpg")

# create user

user1 = User.create(username: "tim tam", password: "pass", login_state: 0)

# user meal

# UserMeal.create(user_id: user1.id, meal_id: meal1.id)



   

puts "✅ Done seeding!"


