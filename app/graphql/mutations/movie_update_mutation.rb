module Mutations
  class MovieUpdateMutation < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :title, String, required: true
    argument :description, String, required: false
    argument :tmdb_id, Integer, required: false
    argument :imdb_id, String, required: false
    argument :release_date, String, required: false
    argument :runtime, Integer, required: false
    argument :tagline, String, required: false
    argument :movie_image_url, String, required: false

    field :movie, Types::MovieType, null: true
    field :errors, [String], null: false

    def resolve(id:, 
                title:,
                description: nil,
                tmdb_id: nil,
                imdb_id: nil,
                release_date: nil,
                runtime: nil,
                tagline: nil,
                movie_image_url: nil)
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