class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :meal_week_plan_id
      t.boolean :login_state
    end
  end
end
