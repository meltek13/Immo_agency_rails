# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
  User.create(
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(number: 10)
  )
end

20.times do 
  Annoucement.create(
    title: Faker::Lorem.characters(number: 5),
    description: Faker::Lorem.words(number: 4),
    adress: Faker::Address.street_address,
    zip_code: Faker::Address.zip_code, 
    city: Faker::Address.city,
    price: rand(250..600),
    size: rand(20..100),
    typeHome: "maison",
    user_id: 2
  )
end