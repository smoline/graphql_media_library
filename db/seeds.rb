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

Person.create!({
  name: "Daniel Day-Lewis",
  biography: "Daniel Michael Blake Day-Lewis (born 29 April 1957) is an English actor with both British and Irish citizenship. His portrayals of Christy Brown in My Left Foot (1989), Daniel Plainview in There Will Be Blood (2007) and Abraham Lincoln in Lincoln (2012) won Academy and BAFTA Awards for Best Actor, and Screen Actors Guild as well as Golden Globe Awards for There Will Be Blood and Lincoln. His role as Bill \"The Butcher\" Cutting in Gangs of New York (2002) earned him the BAFTA Award and a Screen Actors Guild Award.\n\nDay-Lewis, who grew up in London, is the son of actress Jill Balcon and the Anglo-Irish Poet Laureate, Cecil Day-Lewis. He is a method actor, known for his constant devotion to and research of his roles. Often, he will remain completely in character for the duration of the shooting schedule of his films, even to the point of adversely affecting his health. He is known as one of the most selective actors in the film industry, having starred in only seven films since 1997, with as many as five years between roles. Throughout his career Day-Lewis has received numerous accolades and remains the only actor to win the Academy Award for Best Actor three times. In 2012, Time magazine named Day-Lewis \"The World's Greatest Actor\". In 2017, Day-Lewis announced his retirement from acting, with Phantom Thread (2017) being his final film role.\n\nDescription above from the Wikipedia article Daniel Day-Lewis, licensed under CC-BY-SA, full list of contributors on Wikipedia.",
  birthday: "1957-04-29",
  deathday: "",
  place_of_birth: "Greenwich, London, England, UK",
  gender: "Male",
  profile_path_url: "http://image.tmdb.org/t/p/w185/3kNA9VcmymoEwT0btQ4bvMYxzcP.jpg",
  tmdb_people_id: 11856,
  imdb_people_id: "nm0000358"
})

Cast.create!({
  character: "Abraham Lincoln",
  people_id: 1,
  castable_type: "Movie",
  castable_id: 1
})