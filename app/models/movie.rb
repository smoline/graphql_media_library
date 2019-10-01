class Movie < ApplicationRecord
    has_many :owners
    has_many :users, through: :owners
end
