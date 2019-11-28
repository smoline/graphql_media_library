module Queries
  class MovieQuery < BaseQuery
    type Types::MovieType, null: false
    description "Movie resource by ID"

    argument :id, ID, required: true

    def resolve(id:)
      Movie.find(id)
    end
  end
end