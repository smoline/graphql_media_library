import React from 'react'
import Container from '@material-ui/core/Container'
import MovieForm from '../movie-form'

export default class MovieCreate extends React.Component {
  state = {
    title: "",
    description: "",
    tagline: "",
    releaseDate: "",
    runtime: "",
    tmdbId: "",
    imdbId: "",
    movieImageUrl: ""
  }

  handleChange = ({ id, value }) => {
    this.setState({[id]: value})
  }

  render() {
    return (
      <Container maxWidth="xl">
        <header className="movie-header">
          <h2>Add a Movie</h2>
        </header>
        <MovieForm
          onChange={this.handleChange}
        />
      </Container>
    )
  }
}