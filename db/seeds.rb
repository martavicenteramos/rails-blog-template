# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all

puts "creating fake user"
faker_user = User.create ({email: "marta@ramos.pt", password: "hellothere"})
puts "creating articles"
10.times do
  puts "..."
  Article.create({
    subject: Faker::Movies::Hobbit.thorins_company,
    caption: Faker::Movies::LordOfTheRings.character + " is in " + Faker::Movies::LordOfTheRings.location,
    title: Faker::Movies::HarryPotter.book,
    body: Faker::Movies::HarryPotter.quote + " " + Faker::Movies::Hobbit.quote,
    author: Faker::Movies::LordOfTheRings.character,
    user: faker_user
  })
end

puts "Done!"



