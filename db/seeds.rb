# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings"q }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts "creating users"
# Crear 10 housings falsos
user_1 = User.create!(email:'andres@gmail.com', password:'123456',first_name:'Andres',last_name:'Marchant',phone_number:'+56912345678')
user_2 = User.create!(email:'felipe@gmail.com', password:'123456',first_name:'Felipe',last_name:'Mandiola',phone_number:'+56912345678')
user_3 = User.create!(email:'rodrigo@gmail.com', password:'123456',first_name:'Rodrigo',last_name:'Von',phone_number:'+56912345678')
puts "finished users"

users = [user_1, user_2, user_3]

# Crear 10 housings falsos

users.each do |user|
  4.times do
    Housing.create!(
      name: Faker::Lorem.word,
      user_id: user.id,
      price: Faker::Number.between(from: 100, to: 1000),
      amount_bathrooms: Faker::Number.between(from: 1, to: 5),
      amount_rooms: Faker::Number.between(from: 1, to: 5),
      msquare: Faker::Number.between(from: 50, to: 200),
      city: Faker::Address.city,
      state: Faker::Address.state,
      address: Faker::Address.full_address,
      description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false)
    )
  end
end
puts "finished all seeds"
