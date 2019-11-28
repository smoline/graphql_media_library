module Types
  class QueryType < Types::BaseObject
    field :me, Types::UserType, null: true

    def me
      context[:current_user]
    end

    field :movies, resolver: Queries::MoviesQuery
    field :movie, resolver: Queries::MovieQuery
    field :tv_shows, resolver: Queries::TvShowsQuery
    field :tv_show, resolver: Queries::TvShowQuery
    field :people, resolver: Queries::PeopleQuery
  end
end
