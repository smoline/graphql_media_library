class Movie < ApplicationRecord
  include Ownable
  include Castable
  include Crewable
  
  has_many :users, through: :owners
end
