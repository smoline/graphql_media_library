import React from 'react'
import { render } from 'react-dom'
import Provider from '../components/Provider'
import Library from '../components/Library'
import SearchAppBar from '../components/Navigation'

render(
  <Provider>
    <SearchAppBar />
    <Library />
  </Provider>,
  document.querySelector('#root')
)