module Mutations
  class MovieUpdateMutation < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :attributes, Inputs::MovieCreateInput, required: true

    field :movie, Types::MovieType, null: false
    field :errors, [String], null: false

    def resolve(id:, attributes:)
      check_authentication!
      
      movie = Movie.find(id)

      if movie.update(attributes.to_h)
        { movie: movie }
      else
        { errors: movie.errors.full_messages }
      end
    end
  end
end