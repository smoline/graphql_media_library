Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  
  post "/graphql", to: "graphql#execute"

  root 'movies#index'

  # IMPORTANT #
  # This `match` must be the *last* route in routes.rb
  match '*path', to: 'movies#index', via: :all
end
