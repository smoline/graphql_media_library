module Inputs
  class MovieUpdateInput < BaseInputObject
    description "Attributes for creating or updateing a movie"

    argument :id, ID, required: true
    
    argument :title, String, required: true
    argument :description, String, required: false
    argument :tmdb_id, Integer, required: false
    argument :imdb_id, String, required: false
    argument :release_date, String, required: false
    argument :runtime, Integer, required: false
    argument :tagline, String, required: false
    argument :movie_image_url, String, required: false
  end
end
