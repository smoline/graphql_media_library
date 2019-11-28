import React from 'react'
import { Query } from 'react-apollo'
import gql from 'graphql-tag'
import Container from '@material-ui/core/Container'
import { Rating } from '@material-ui/lab'
import StarBorderIcon from '@material-ui/icons/StarBorder'
import './movies.scss'
import { Link } from 'react-router-dom'

const MOVIE_QUERY = gql`
  {
    movies {
      id
      title
      releaseDate
      movieImageUrl
      runtime
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

export default class Movie extends React.Component {
  render () {
    return (
      <Container maxWidth="xl">
        <header className="movie-header">
          <h2>My Movies</h2>
        </header>
        <Query query={MOVIE_QUERY}>
          {({ data, loading }) => (
            <div className="main-container">
              {loading ? 'loading...' : data.movies.map(({ id, title, movieImageUrl, releaseDate, runtime }) => (
                  <div key={id} className="media-container">
                    <Link to={`/movies/${id}`}>
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
                    </Link>
                  </div>
                ))}
            </div>
          )}
        </Query>
      </Container>
    )
  }
}