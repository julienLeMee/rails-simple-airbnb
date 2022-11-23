# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Flat.create!(
#   name: 'Light & Spacious Garden Flat London',
#   address: '10 Clifton Gardens London W9 1DT',
#   description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
#   price_per_night: 75,
#   number_of_guests: 3,
#   picture: 'https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200'
# )

require 'faker'

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
6.times do
  Flat.create!(
    name: Faker::Movies::HarryPotter.location,
    address: Faker::Address.full_address,
    description: Faker::Movies::HarryPotter.quote,
    price_per_night: rand(1..100),
    number_of_guests: rand(1..10),
    picture: 'https://source.unsplash.com/1600x900/?house'
  )
end
