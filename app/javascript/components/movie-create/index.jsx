import React from 'react'
import { Mutation } from 'react-apollo'
import { MovieCreateMutation } from './movie-create.graphql'
import MovieForm from '../movie-form'
import { MovieIndexQuery } from '../movies-index/movies-index.graphql'

const MovieCreate = () => (
  <Mutation mutation={MovieCreateMutation}>
    {(movieCreate, { loading }) => (
      <MovieForm
        buttonText="Add Movie"
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
          movieCreate({
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
            update: (cache, { data: { movieCreate } }) => {
              {
                const movie = movieCreate.movie;
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

export default MovieCreate