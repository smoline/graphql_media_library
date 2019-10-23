module Types
  class TvShowType < Types::BaseObject
    field :id, ID, null: false
    field :tv_show_title, String, null: false
    field :episode_name, String, null: true
    field :description, String, null: true
    field :season, Integer, null: true
    field :episode, Integer, null: true
    field :tmdb_id, Integer, null: false
    field :imdb_id, String, null: true
    field :tv_image_url, String, null: true

    field :owners, [Types::OwnerType], null: false
    field :casts, [Types::CastType], null: false
    field :crews, [Types::CrewType], null: false
  end
end
