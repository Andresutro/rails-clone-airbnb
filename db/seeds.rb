# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Crear 10 housings falsos

#hay que crear primeor dos users!

6.times do
  Housing.create(
    name: Faker::Lorem.word,
    user_id: 1,
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

# 4.times do
#   Housing.create(
#     name: Faker::Lorem.word,
#     user_id: 2,
#     price: Faker::Number.between(from: 100, to: 1000),
#     amount_bathrooms: Faker::Number.between(from: 1, to: 5),
#     amount_rooms: Faker::Number.between(from: 1, to: 5),
#     msquare: Faker::Number.between(from: 50, to: 200),
#     city: Faker::Address.city,
#     state: Faker::Address.state,
#     address: Faker::Address.full_address,
#     description: Faker::Lorem.paragraph_by_chars(number: 500, supplemental: false)
#   )
# end
