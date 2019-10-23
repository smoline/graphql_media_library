class Cast < ApplicationRecord
  belongs_to :castable, :polymorphic => true
  belongs_to :person
end
