module Types
  class QueryType < Types::BaseObject
    field :movies,
      [Types::MovieType],
      null: false,
      description: "Returns a list of movies in the media library"

    field :people,
      [Types::PersonType],
      null: false,
      description: "Returns a list of people in the media library"

    def movies
      Movie.all
    end

    def people
      People.all
    end
  end
end
