class User < ApplicationRecord
    has_many :owners, dependent: :destroy
    has_many :movies, through: :owners
end
