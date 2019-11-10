class TvShow < ApplicationRecord
  include Ownable
  
  has_many :users, through: :owners
end
