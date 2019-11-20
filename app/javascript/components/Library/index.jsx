import React from 'react'
import { Query } from 'react-apollo'
import gql from 'graphql-tag'
import Container from '@material-ui/core/Container'
import './library.scss'

const LIBRARY_QUERY = gql`
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
  <Container>
    <Query query={LIBRARY_QUERY}>
      {({ data, loading }) => (
        <div>
          {loading ? 'loading...' : data.movies.map(({ id, title, movieImageUrl, releaseDate, runtime }) => (
              <div key={id} className="media-container">
                <div className="image-box"><img src={movieImageUrl} /></div>
                <div className="media-title">
                  <p>{title}</p>
                </div>
                <div className="media-row2">
                  <p>{releaseDate}</p>
                  <p>{runtime} mins</p>
                </div>
                <div className="media-row3">
                  <p>**Rating**</p>
                </div>
              </div>
            ))}
        </div>
      )}
    </Query>
  </Container>
)