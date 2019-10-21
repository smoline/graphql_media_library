module Crewable
  extend ActiveSupport::Concern
  included do
    has_many :crew, :as => :crewable
  end
end