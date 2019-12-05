import React from 'react'
import { Mutation } from 'react-apollo'
import { MovieUpdateMutation } from './movie-update.graphql'
import MovieForm from '../movie-form'
import { MovieIndexQuery } from '../movies-index/movies-index.graphql'

const MovieUpdate = () => (
  <Mutation mutation={MovieUpdateMutation}>
    {(movieUpdate, { loading }) => (
      <MovieForm
        buttonText="Save Movie"
        loading={loading}
        onProcessMovie={({
          title,
          description,
          releaseDate,
          runtime,
          tagline,
          tmdbId,
          imdbId,
          movieImageUrl }) =>
          movieUpdate({
            variables: {
              title,
              description,
              releaseDate,
              runtime,
              tagline,
              tmdbId,
              imdbId,
              movieImageUrl
            },
            update: (cache, { data: { movieUpdate } }) => {
              {
                const movie = movieUpdate.movie;
                if (movie) {
                  const currentMovies = cache.readQuery({ query: MovieIndexQuery });
                  cache.writeQuery({
                    query: MovieIndexQuery,
                    data: {
                      movies: [movie].concat(currentMovies.movies),
                    },
                  })
                }
              }
            }
          })
        }
      />
    )}
  </Mutation>
)

export default MovieUpdate