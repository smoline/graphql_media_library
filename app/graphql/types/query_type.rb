module Types
  class QueryType < Types::BaseObject
    field :movies,
        [Types::MovieType],
        null: false,
        description: "Returns a list of movies in the media library"

    def movies
      Movie.all
    end
  end
end
