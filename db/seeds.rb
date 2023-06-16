# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings"q }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require "open-uri"

puts "creating users"
# Crear 10 housings falsos
user_1 = User.create!(email:'andres@gmail.com', password:'123456',first_name:'Andres',last_name:'Marchant',phone_number:'123456789')
user_2 = User.create!(email:'felipe@gmail.com', password:'123456',first_name:'Felipe',last_name:'Mandiola',phone_number:'123456789')
user_3 = User.create!(email:'rodrigo@gmail.com', password:'123456',first_name:'Rodrigo',last_name:'Von',phone_number:'123456789')
puts "finished users"

users = [user_1, user_2, user_3]

# Crear 10 housings falsos
puts "creating housingngs"
users.each do |user|
  4.times do
    housing = Housing.create!(
      name: Faker::Company.name[0..20],
      user_id: user.id,
      price: Faker::Number.between(from: 100, to: 1000),
      amount_bathrooms: Faker::Number.between(from: 1, to: 5),
      amount_rooms: Faker::Number.between(from: 1, to: 5),
      msquare: Faker::Number.between(from: 50, to: 200),
      city: Faker::Address.city,
      state: Faker::Address.state,
      address: Faker::Address.full_address,
      description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false),
      max_persons: Faker::Number.between(from: 1, to: 20)
    )
    file = URI.open("https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666")
    housing.images.attach(io: file, filename: "nes.png", content_type: "image/png")
    housing.save

  end
end
puts "finished all seeds"
