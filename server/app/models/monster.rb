class Monster < ApplicationRecord
  belongs_to :monster_species
  belongs_to :owner, class_name: 'Trainer'
end
