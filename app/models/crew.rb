class Crew < ApplicationRecord
  belongs_to :crewable, :polymorphic => true
  belongs_to :person
end
