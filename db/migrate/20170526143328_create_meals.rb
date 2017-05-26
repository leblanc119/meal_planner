class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :image
      t.integer :created_by

      t.timestamps

    end
  end
end
