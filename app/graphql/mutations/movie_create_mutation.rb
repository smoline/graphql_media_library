module Mutations
  class MovieCreateMutation < Mutations::BaseMutation
    argument :attributes, Inputs::MovieCreateInput, required: true

    field :movie, Types::MovieType, null: false
    field :errors, Types::ValidationErrorsType, null: true

    def resolve(attributes:)
      check_authentication!

      movie = Movie.new(attributes.to_h.merge(user: context[:current_user]))

      if movie.save
        { movie: movie }
      else
        { errors: movie.errors }
      end
    end
  end
end