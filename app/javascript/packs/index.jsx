import React from 'react'
import { render } from 'react-dom'
import Provider from '../components/Provider'
import Library from '../components/Library'
import SearchAppBar from '../components/Navigation'
import { ThemeProvider } from '@material-ui/core/styles'
import { createMuiTheme } from '@material-ui/core/styles'
import { grey } from '@material-ui/core/colors'
import { blue } from '@material-ui/core/colors'

const theme = createMuiTheme({
  palette: {
    primary: grey,
    secondary: blue,
  },
})

render(
  <ThemeProvider theme={theme}>
    <Provider>
      <SearchAppBar />
      <Library />
    </Provider>
  </ThemeProvider>,
  document.querySelector('#root')
)