class User < ApplicationRecord
  include Ownable

  has_many :owners, dependent: :destroy
end
