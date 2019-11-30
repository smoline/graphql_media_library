import React from 'react'
import { FormControl, TextField } from '@material-ui/core'

export default class MovieForm extends React.Component {
  
  render() {
    return (
      <div className="main-container">
        <FormControl>
          <TextField
            label="Title"
            id="outlined-basic"
            label="Movie Title"
            variant="outlined"
            margin="normal"
          />
          <TextField
            id="outlined-basic"
            label="Description"
            variant="outlined"
            margin="normal"
          />
          <TextField
            id="outlined-basic"
            label="Release Date"
            variant="outlined"
            margin="normal"
          />
          <TextField
            id="outlined-basic"
            label="Runtime"
            variant="outlined"
            margin="normal"
          />
          <TextField
            id="outlined-basic"
            label="Tagline"
            variant="outlined"
            margin="normal"
          />
          <TextField
            id="outlined-basic"
            label="TMDB ID"
            variant="outlined"
            margin="normal"
          />
          <TextField
            id="outlined-basic"
            label="IMDB ID"
            variant="outlined"
            margin="normal"
          />
          <TextField
            id="outlined-basic"
            label="Movie Image URL"
            variant="outlined"
            margin="normal"
          />
        </FormControl>
      </div>
    )
  }
}