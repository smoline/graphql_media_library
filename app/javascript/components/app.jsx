import React from "react"
import Routes from "../routes/index"
import Provider from '../components/Provider'
import { ThemeProvider } from '@material-ui/core/styles'
import { createMuiTheme } from '@material-ui/core/styles'
import { blue } from '@material-ui/core/colors'

const theme = createMuiTheme({
  palette: {
    type: 'dark',
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

export default class App extends React.Component {
  render () {
    return (
      <ThemeProvider theme={theme}>
          <Provider>
            {Routes}
          </Provider>
      </ThemeProvider>
    )
  }
}