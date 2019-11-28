module Queries
  class TvShowsQuery < BaseQuery
    type [Types::TvShowType], null: false
    description "Returns a list of tv shows in the media library"

    def resolve
      TvShow.all
    end
  end
end