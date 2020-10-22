# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

50.times do
    dog_sitter = DogSitter.create(name: Faker::Creature::Dog.name)
end

50.times do
    dog = Dog.create(name: Faker::Name.first_name)
end

15.times do
    city = City.create(city_name: Faker::Address.street_address)
end

20.times do
    stroll = Stroll.create(city: City.all.sample, dog: Dog.all.sample, dog_sitter: DogSitter.all.sample)
end