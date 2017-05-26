# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.new
u1.email = "a@a.com"
u1.password = "12341234"
u1.first_name = "Leanne"
u1.save

puts "#{User.count} users in the database"

Meal.destroy_all

m1 = Meal.new
m1.name = "Chicken Piccata"
m1.image = "http://assets.simplyrecipes.com/wp-content/uploads/2015/07/chicken-piccata-horiz-a-1600.jpg"
m1.created_at = Date.parse("2017/6/12")
m1.save

puts "#{Meal.count} meals in the database"
