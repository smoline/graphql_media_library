module Types
  class QueryType < Types::BaseObject
    field :me, Types::UserType, null: true

    field :movies,
      [Types::MovieType],
      null: false,
      description: "Returns a list of movies in the media library"

    field :people,
      [Types::PersonType],
      null: false,
      description: "Returns a list of people in the media library"

    def me
      context[:current_user]
    end

    def movies
      Movie.all
    end

    def people
      People.all
    end
  end
end
