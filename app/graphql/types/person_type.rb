module Types
  class PersonType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :birthday, String, null: false
    field :deathday, String, null: true
    field :tmdb_people_id, Integer, null: false
    field :imdb_people_id, String, null: true
    field :place_of_birth, String, null: true
    field :gender, String, null: true
    field :profile_path_url, String, null: true

    field :casts, [Types::CastType], null: true
    field :crews, [Types::CrewType], null: true
  end
end
