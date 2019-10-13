module Types
  class MovieType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :tmdb_id, Integer, null: false
    field :imdb_id, String, null: true
    field :release_date, String, null: true
    field :runtime, Integer, null: true
    field :tagline, String, null: true
    field :movie_image_url, String, null: true
  end
end
