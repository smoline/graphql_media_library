module Castable
  extend ActiveSupport::Concern
  included do
    has_many :cast, :as => :castable
  end
end