class Types::OwnableUnion < Types::BaseUnion
  description "Objects which may be owned"
  possible_types Types::MovieType

  def self.resolve_type(object, context)
    if object.is_a?(Movie)
      Types::MovieType
    end
  end
end