import React, { useState } from 'react'
import Container from '@material-ui/core/Container'
import { FormControl, TextField, Button } from '@material-ui/core'

const MovieForm = ({
  initialTitle = '',
  initialDescription = '',
  initialReleaseDate = '',
  initialRuntime = '',
  initialTagline = '',
  initialTmdbId = '',
  initialImdbId = '',
  initialMovieImageUrl = '',
  onProcessMovie,
  buttonText,
  loading,
}) => {
  const [title, setTitle] = useState(initialTitle)
  const [description, setDescription] = useState(initialDescription)
  const [releaseDate, setReleaseDate] = useState(initialReleaseDate)
  const [runtime, setRuntime] = useState(initialRuntime)
  const [tagline, setTagline] = useState(initialTagline)
  const [tmdbId, setTmdbId] = useState(initialTmdbId)
  const [imdbId, setImdbId] = useState(initialImdbId)
  const [movieImageUrl, setMovieImageUrl] = useState(initialMovieImageUrl)
  return (
    <Container maxWidth="xl">
      <header className="movie-header">
        <h2>Add a Movie</h2>
      </header>
      <FormControl>
        <TextField
          label="Title"
          id="outlined-basic"
          label="Movie Title"
          variant="outlined"
          margin="normal"
          value={title}
          onChange={e => setTitle(e.currentTarget.value)}
        />
        <TextField
          id="outlined-basic"
          label="Description"
          variant="outlined"
          margin="normal"
          value={description}
          onChange={e => setDescription(e.currentTarget.value)}
        />
        <TextField
          id="outlined-basic"
          label="Release Date"
          variant="outlined"
          margin="normal"
          value={releaseDate}
          onChange={e => setReleaseDate(e.currentTarget.value)}
        />
        <TextField
          id="outlined-basic"
          label="Runtime"
          variant="outlined"
          margin="normal"
          value={runtime}
          onChange={e => setRuntime(e.currentTarget.value)}
        />
        <TextField
          id="outlined-basic"
          label="Tagline"
          variant="outlined"
          margin="normal"
          value={tagline}
          onChange={e => setTagline(e.currentTarget.value)}
        />
        <TextField
          id="outlined-basic"
          label="TMDB ID"
          variant="outlined"
          margin="normal"
          value={tmdbId}
          onChange={e => setTmdbId(e.currentTarget.value)}
        />
        <TextField
          id="outlined-basic"
          label="IMDB ID"
          variant="outlined"
          margin="normal"
          value={imdbId}
          onChange={e => setImdbId(e.currentTarget.value)}
        />
        <TextField
          id="outlined-basic"
          label="Movie Image URL"
          variant="outlined"
          margin="normal"
          value={movieImageUrl}
          onChange={e => setMovieImageUrl(e.currentTarget.value)}
        />
        {loading ? (
          '...Loading'
        ) : (
          <Button
            variant="outlined"
              onClick={() => onProcessMovie({
                title,
                description,
                releaseDate,
                runtime,
                tagline,
                tmdbId,
                imdbId,
                movieImageUrl })}>
            {buttonText}
          </Button>
        )}
      </FormControl>
    </Container>
  )
}

export default MovieForm