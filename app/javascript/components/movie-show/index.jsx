import React from 'react'
import { Query } from 'react-apollo'
import { MovieShowQuery } from './movie-show.graphql'
import Container from '@material-ui/core/Container'
import { Rating } from '@material-ui/lab'
import StarBorderIcon from '@material-ui/icons/StarBorder'
import './movie.scss'

export default class MovieShow extends React.Component {
  fetchMovie = (id) => (
    <Query query = { MovieShowQuery } variables = {{ id }}>
      {({ loading, error, data }) => {
        if (loading) return (<div>loading...</div>)
        if (error) return `Error! ${error}`

        return (
          <div className="main-container">
            <div className="movie-container">
              <div className="image-box"><img src={data.movie.movieImageUrl} /></div>
              <div className="text-container">
                <div className="movie-title">
                  <h3>{data.movie.title}</h3>
                </div>
                <div className="movie-row-rating">
                  <Rating
                    name="customized-empty"
                    value={3}
                    emptyIcon={<StarBorderIcon fontSize="inherit" color="primary" />}
                  />
                </div>
                <div className="movie-row">
                  <p>{data.movie.description}</p>
                </div>
                <div className="movie-row">
                  <p>"...{data.movie.tagline}"</p>
                </div>
                <div className="movie-row">
                  <p>Release Date: {data.movie.releaseDate}</p>
                </div>
                <div className="movie-row">
                  <p>Runtime: {data.movie.runtime} mins</p>
                </div>
              </div>
            </div>
          </div>
        )
      }}
    </Query>
  )

  render() {
    return (
      <Container maxWidth="xl">
        <header className="movie-header">
          <h2>Movie Show</h2>
        </header>
        {this.fetchMovie(this.props.match.params.id)}
      </Container>
    )
  }
}