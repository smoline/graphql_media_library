module Types
  class CastType < Types::BaseObject
    field :id, ID, null: false
    field :character, String, null: false
    field :person, Types::PersonType, null: false
    field :castable, [CastableUnion], null: false
  end
end
