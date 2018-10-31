# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
names = []
10.times do
  names << Faker::LeagueOfLegends.champion
end

content = []
10.times do
  content << Faker::Address.street_address
end

phones =[]
10.times do
  phones << Faker::PhoneNumber.phone_number
end

category = ['chinese', 'italian', 'japanese', 'french', 'belgian']

15.times do
  Restaurant.create(name: names.sample, address: content.sample, phone_number: phones.sample, category: category.sample)
end
