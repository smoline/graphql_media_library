module Queries
  class TvShowQuery < BaseQuery
    type Types::TvShowType, null: false
    description "Returns a tv show resource by ID"

    argument :id, ID, required: true

    def resolve(id:)
      TvShow.find(id)
    end
  end
end