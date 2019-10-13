# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sheri = User.create!(
  email: "smoline@gmail.com",
  first_name: "Sheri",
  last_name: "Moline"
)

example_user = User.create!(
  email: "exapmple@email.com",
  first_name: "John",
  last_name: "Smith"
)

Movie.create!({
  title: "Lincoln",
  tmdb_id: 72976,
  imdb_id: "tt0443272",
  description: "A revealing drama that focuses on the 16th President's tumultuous final months in office. In a nation divided by war and the strong winds of change, Lincoln pursues a course of action designed to end the war, unite the country and abolish slavery. With the moral courage and fierce determination to succeed, his choices during this critical moment will change the fate of generations to come.",
  release_date: "2012-11-09",
  runtime: 149,
  tagline: "With the moral courage and fierce determination to succeed, his choices will change the fate of generations to come.",
  movie_image_url: "http://image.tmdb.org/t/p/w185/gkkiDu9srCCbCMxGKwNwKCxK7KF.jpg"
})

Owner.create!({
  user_id: 1,
  notes: "Excellent Movie",
  upc: nil,
  rating: 3,
  ownable_type: "Movie",
  ownable_id: 1
})