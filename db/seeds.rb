# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'random_data'
# Create Users
# 5.times do
#   User.create!(
# # #3
#   name:     RandomData.random_name,
#   email:    RandomData.random_email,
#   password: RandomData.random_sentence
#   )
# end
# users = User.all
15.times do
  List.create!(
  name: RandomData.random_sentence,
  description: RandomData.random_paragraph
  )
end
lists = List.all
# create items
50.times do

  item = Item.create!(

  list: lists.sample,
  body: RandomData.random_sentence
  )
  item.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)

end
items = Item.all



#create an admin user
# admin = User.create!(
# name: 'Admin User',
# email: 'admin@example.com',
# password: 'helloworld',
# role: 'admin'
# )


puts "Seed finished"
 puts "#{List.count} lists created"
 puts "#{User.count} users created"
puts "#{Item.count} items created"
