import React from 'react'
import { Query } from 'react-apollo'
import gql from 'graphql-tag'
import Container from '@material-ui/core/Container'
import { Rating } from '@material-ui/lab'
import StarBorderIcon from '@material-ui/icons/StarBorder'
import './movies.scss'

const MOVIE_QUERY = gql`
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
`

export default () => (
  <Container maxWidth="xl">
    <header className="movie-header">
      <h2>My Movies</h2>
    </header>
    <Query query={MOVIE_QUERY}>
      {({ data, loading }) => (
        <div className="main-container">
          {loading ? 'loading...' : data.movies.map(({ id, title, movieImageUrl, releaseDate, runtime }) => (
              <div key={id} className="media-container">
                <div className="image-box"><img src={movieImageUrl} /></div>
                <div className="text-container">
                  <div className="media-title">
                    <p>{title}</p>
                  </div>
                  <div className="media-row3">
                    <Rating
                      name="customized-empty"
                      value={3}
                      emptyIcon={<StarBorderIcon fontSize="inherit" color="primary" />}
                    />
                  </div>
                  <div className="media-row2">
                    <p>{releaseDate}</p>
                    <p>{runtime} mins</p>
                  </div>
                </div>
              </div>
            ))}
        </div>
      )}
    </Query>
  </Container>
)