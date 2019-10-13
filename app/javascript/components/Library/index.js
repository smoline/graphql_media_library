import React from 'react'
import { Query } from 'react-apollo'
import gql from 'graphql-tag'

const LibraryQuery = gql`
  {
    movies {
      id
      title
      description
      releaseDate
      movieImageUrl
      runtime
      tagline
      tmdbId
      imdbId
      owners {
        id
        notes
        rating
        upc
        user {
          email
          fullName
        }
      }
    }
  }
`;

export default () => (
  <Query query={LibraryQuery}>
    {({ data, loading }) => (
      <div>
        {loading ? 'loading...' : data.movies.map(({ id, title, description, releaseDate, runtime, tagline }) => (
            <div key={id}>
              <b>{title}</b>
              <p>{description}</p>
            </div>
          ))}
      </div>
    )}
  </Query>
)