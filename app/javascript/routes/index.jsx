import React from "react"
import { Route, Switch } from "react-router-dom"
import SearchAppBar from '../components/Navigation'
import Movies from "../components/movies-index"
import MovieShow from "../components/movie-show"
import MovieCreate from "../components/movie-create"

export default (
  <div>
    <SearchAppBar />
    <Switch>
      <Route exact path="/" component={Movies} />
      <Route exact path="/movies" component={Movies} />
      <Route exact path="/movies/:id" component={MovieShow} />
      <Route exact path="/movies/create" component={MovieCreate} />
    </Switch>
  </div>
)