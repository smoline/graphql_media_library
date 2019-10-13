class Owner < ApplicationRecord
  belongs_to :ownable, :polymorphic => true
  belongs_to :user
end
