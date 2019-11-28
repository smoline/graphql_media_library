module Queries
  class MoviesQuery < BaseQuery
    type [Types::MovieType], null: false
    description "Returns a list of movies in the media library"

    def resolve
      Movie.all
    end
  end
end