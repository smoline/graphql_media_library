import React from 'react'
import { render } from 'react-dom'
import Provider from '../components/Provider'
import Movies from '../components/Movies'
import SearchAppBar from '../components/Navigation'
import { ThemeProvider } from '@material-ui/core/styles'
import { createMuiTheme } from '@material-ui/core/styles'
import { blue } from '@material-ui/core/colors'

const theme = createMuiTheme({
  palette: {
    primary: {
      light: '#eeeeee',
      main: '#757575',
      dark: '#424242',
      contrastText: '#fafafa',
    },
    secondary: blue,
  },
  typography: {
    fontFamily: [
      'Helvetica',
      'Arial',
      'sans-serif',
    ].join(','),
  },
})

render(
  <ThemeProvider theme={theme}>
    <Provider>
      <SearchAppBar />
      <Movies />
    </Provider>
  </ThemeProvider>,
  document.querySelector('#root')
)