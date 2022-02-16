# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# 10.times do
#   Restaurant.create(
#     name:    Faker::Company.name,
#     address: Faker::Address.street_address,
#     phone_number:  "07889129929",
#     category: "chinese"
#   )
# end
i = 21
20.times do
  Review.create(
    content: 'Absolutely incredible. too good to be true. So I will be suing this place.',
    rating: rand(0..5),
    restaurant_id: i
  )
  i += 1
end

puts Review.all
