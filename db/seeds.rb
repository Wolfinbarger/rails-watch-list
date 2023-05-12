# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

10.times do
  Movie.create(title: Faker::Movie.title,
               overview: Faker::Movie.quote,
               rating: Faker::Number.between(from: 0.0, to: 10.0))

  List.create(name: Faker::CryptoCoin.coin_name)
end
