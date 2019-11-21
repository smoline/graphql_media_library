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


Movie.create!({
  title: "Letters from Iwo Jima",
  tmdb_id: 1251,
  imdb_id: "",
  description: "The story of the battle of Iwo Jima between the United States and Imperial Japan during World War II, as told from the perspective of the Japanese who fought it.",
  release_date: "2006-12-19",
  runtime: 141,
  tagline: "The battle of Iwo Jima seen through the eyes of the Japanese soldiers.",
  movie_image_url: "http://image.tmdb.org/t/p/w185//nWJJqOryTQOmVXvKUkLcEETUHgT.jpg"
})
  
Owner.create!({
  user_id: 1,
  notes: "",
  upc: nil,
  rating: 3,
  ownable_type: "Movie",
  ownable_id: 2
})

# Cast.create!({
#   character: "Abraham Lincoln",
#   people_id: 1,
#   castable_type: "Movie",
#   castable_id: 1
# })

Movie.create!({
 title: "Flags of Our Fathers",
 tmdb_id: 3683,
 imdb_id: "",
 description: "There were five Marines and one Navy Corpsman photographed raising the U.S. flag on Mt. Suribachi by Joe Rosenthal on February 23, 1945. This is the story of three of the six surviving servicemen – John 'Doc' Bradley, Pvt. Rene Gagnon and Pvt. Ira Hayes, who fought in the battle to take Iwo Jima from the Japanese.",
 release_date: "2006-10-18",
 runtime: 132,
 tagline: "They fight for their country but they die for their friends.",
 movie_image_url: "http://image.tmdb.org/t/p/w185//4tbKYa8vZSsTCHKca9D6rS4NJ08.jpg"
})

Owner.create!({
  user_id: 1,
  notes: "",
  upc: nil,
  rating: 3,
  ownable_type: "Movie",
  ownable_id: 3
})

Movie.create!({
 title: "The Man Who Shot Liberty Valance",
 tmdb_id: 11697,
 imdb_id: "",
 description: "A senator, who became famous for killing a notorious outlaw, returns for the funeral of an old friend and tells the truth about his deed.",
 release_date: "1962-04-22",
 runtime: 123,
 tagline: "Together For The First Time - James Stewart - John Wayne - in the masterpiece of four-time Academy Award winner John Ford",
 movie_image_url: "http://image.tmdb.org/t/p/w185//qEczX5Rruux72XOHDeeLJEvmZkV.jpg"
})

Owner.create!({
  user_id: 1,
  notes: "",
  upc: nil,
  rating: 3,
  ownable_type: "Movie",
  ownable_id: 4
})

Movie.create!({
 title: "Once Upon a Time in the West",
 tmdb_id: 335,
 imdb_id: "",
 description: "This classic western masterpiece is an epic film about a widow whose land and life are in danger as the railroad is getting closer and closer to taking them over. A mysterious harmonica player joins forces with a desperado to protect the woman and her land.",
 release_date: "1968-12-21",
 runtime: 175,
 tagline: "There were three men in her life. One to take her... one to love her... and one to kill her.",
 movie_image_url: "http://image.tmdb.org/t/p/w185//rVAHRtAMhV8QVXQMQ8NxNbZXCDp.jpg"
})

Owner.create!({
  user_id: 1,
  notes: "",
  upc: nil,
  rating: 3,
  ownable_type: "Movie",
  ownable_id: 5
})

Movie.create!({
 title: "Real Genius",
 tmdb_id: 14370,
 imdb_id: "",
 description: "Chris is the top brain who just wants to party, Mitch is the 15-year-old college wiz kid. Supposedly hard at work on a lab project with a mysterious deadline, they still find time to use their genius to discover new ways to have fun.",
 release_date: "1985-08-07",
 runtime: 106,
 tagline: "Who ELSE can turn lasers into light shows, aircraft into armchairs, and high-tech into hijinks?",
 movie_image_url: "http://image.tmdb.org/t/p/w185//1HxrHluqDwou74TrE3bRqoiQN9N.jpg"
})

Owner.create!({
  user_id: 1,
  notes: "",
  upc: nil,
  rating: 3,
  ownable_type: "Movie",
  ownable_id: 6
})

