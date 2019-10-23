class Types::CrewableUnion < Types::BaseUnion
  description "Objects which may have crews"
  possible_types Types::MovieType, Types::TvShowType

  def self.resolve_type(object, context)
    if object.is_a?(Movie)
      Types::MovieType
    else
      Types::TvShowType
    end
  end
end