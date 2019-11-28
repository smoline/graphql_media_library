module Queries
  class PeopleQuery < BaseQuery
    type [Types::PersonType], null: false
    description "Returns a list of people in the media library"

    def resolve
      People.all
    end
  end
end