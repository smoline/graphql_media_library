module Types
  class MutationType < Types::BaseObject
    field :sign_in, mutation: Mutations::SignInMutation
    field :movie_create, mutation: Mutations::MovieCreateMutation
    field :movie_update, mutation: Mutations::MovieUpdateMutation
  end
end
