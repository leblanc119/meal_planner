class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.integer :meal_id
      t.string :meal_time
      t.string :meal_day
      t.integer :week_id
      t.integer :user_id

      t.timestamps

    end
  end
end
