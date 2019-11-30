module Mutations
  class MovieUpdateMutation < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :arguments, Inputs::MovieUpdateInput, required: true

    field :movie, Types::MovieType, null: false
    field :errors, [String], null: false

    def resolve(title: arguments.title,
                description: arguments.description,
                tmdb_id: arguments.tmdb_id,
                imdb_id: arguments.imdb_id,
                release_date: arguments.release_date,
                runtime: arguments.runtime,
                tagline: arguments.tagline,
                movie_image_url: arguments.movie_image_url)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
              "You need to authenticate to perform this action"
      end

      movie = Movie.find(id)

      if movie.update(
        title: title,
        description: description,
        tmdb_id: tmdb_id,
        imdb_id: imdb_id,
        release_date: release_date,
        runtime: runtime,
        tagline: tagline,
        movie_image_url: movie_image_url
      )
        { movie: movie }
      else
        { errors: movie.errors.full_messages }
      end
    end
  end
end