module Types
  class CrewType < Types::BaseObject
    field :id, ID, null: false
    field :job, String, null: false
    field :department, String, null: false
    field :person, Types::PersonType, null: false
    field :crewable, [CrewableUnion], null: false
  end
end