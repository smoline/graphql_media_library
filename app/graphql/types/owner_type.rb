module Types
  class OwnerType < Types::BaseObject
    field :id, ID, null: false
    field :notes, String, null: true
    field :upc, Integer, null: true
    field :rating, Integer, null: true
    field :user, Types::UserType, null: false
    field :ownable, [OwnableUnion], null: false
  end
end
