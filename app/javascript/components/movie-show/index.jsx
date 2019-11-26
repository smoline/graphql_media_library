import React from 'react'
import { Query } from 'react-apollo'
import { MovieShow } from './movie-show.graphql'
import Container from '@material-ui/core/Container'
import { Rating } from '@material-ui/lab'
import StarBorderIcon from '@material-ui/icons/StarBorder'
import './movie.scss'

export default class MovieShow extends React.Component {
  render() {
    return (
      <Container maxWidth="xl">
        <header className="movie-header">
          <h2>Movie Show</h2>
        </header>
        <Query query={MovieShow}>
          {({ data, loading }) => (
            <div className="main-container">
              {loading ? 'loading...' : data.movies.map(({ id, title, description, tagline, tmdbId, imdbId, movieImageUrl, releaseDate, runtime }) => (
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
  }
}